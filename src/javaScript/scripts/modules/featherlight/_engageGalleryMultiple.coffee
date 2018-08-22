_engageGalleryMultiple = (app, module, galleryWrapper, imageSelectors) ->
    
    miniatureSelector = imageSelectors
    
    # Horizontal scrolling for thumbs inside lightbox
    flThumbnailScroll = (navigation, thumb) ->
        
        if navigation == undefined or thumb == undefined
            console.log '"flThumbnailScroll" has undefined input!'
            return false
            
        if navigation.length == 0 or thumb.length == 0
            console.log '"flThumbnailScroll" lacks a valid input element!'
            return false
            
        setTimeout (->
            thumbWidth = thumb.outerWidth(true)
            featherlightWidth = navigation.width()
            featherlightWidth -= thumbWidth
            offsetScroll = thumb[0].offsetLeft - (featherlightWidth / 2)
            
            navigation.animate
                scrollLeft: offsetScroll, 200
            return
            
        ), 10
        
        return

    # Thumb flipper for clicking on buttons/swipe
    flThumbnailFlipper = ->
        flPrev = '.featherlight-previous'
        flNext = '.featherlight-next'
        
        # Add listener for clicks
        flipThumbnail = (trigger) ->
            
            # Get the navigation
            navigation = $('.featherlight-content').find('.navigation')
            
            # Get current active tab
            currentThumb = navigation.find('.active')
            currentThumbPosition = currentThumb.index() + 1
            
            # Grab the particular element
            flFlipper = trigger
            
            # Check if we are going back or forward
            flFlipperConst = if flFlipper.is(flPrev) then -1 else 1
            
            # Set the position of the next thumb
            currentThumbPosition = currentThumbPosition + flFlipperConst
            
            # Get the following thumb
            followingThumb = navigation.find('a:nth-child(' + currentThumbPosition + ')')
            
            # Check if flipped over the max/min count and manualy set first/last div
            if followingThumb.length == 0
                
                # If the navigation went pass max and is at first
                if flFlipperConst == 1
                    followingThumb = navigation.find('a:nth-child(1)')
                    
                # If the navigation went pass min and is at last
                if flFlipperConst == -1
                    followingThumb = navigation.find('a:nth-child(' + navigation.children().length + ')')
                    
            # Add active class to proper thumb
            followingThumb.siblings().removeClass 'active'
            followingThumb.addClass 'active'
            
            # Call the scrolling on proper thumb
            flThumbnailScroll navigation, followingThumb
            
            return
        
        $(flPrev + ', ' + flNext).on 'click', (event) ->
            flipThumbnail $(this)
            return
            
        # Add listener for mobile swiping
        if $.featherlight.current() != null
            
            $.featherlight.current().$instance.on 'swipeleft', ->
                flipThumbnail $('.featherlight-next')
                return
                
            $.featherlight.current().$instance.on 'swiperight', ->
                flipThumbnail $('.featherlight-previous')
                return
                
        # Add listener for buttons
        $(document).keydown (e) ->
            if $.featherlight.current() != null
                keyCode = e.keyCode or e.which
                arrow =
                    left: 37
                    right: 39
                switch keyCode
                    when arrow.left
                        flipThumbnail $('.featherlight-previous')
                    when arrow.right
                        flipThumbnail $('.featherlight-next')
            return
        return

    # Actual galleries load
    galleries = $(galleryWrapper)
    galleries.each (index, el) ->
    
        gallery = $(@)
        variant = ''
    
        if gallery.hasClass('js-noRun') is true
            return true
    
        if gallery.hasClass('invert') is true
            variant = 'invert'
            
        gallery.find(imageSelectors).featherlightGallery
            gallery:
                fadeIn: 300
                fadeOut: 300
            previousIcon: '<div class="slideLeft"></div>'
            nextIcon: '<div class="slideRight"></div>'
            openSpeed: 300
            closeSpeed: 300
            variant: variant
            
            beforeOpen: (event) ->
                self = this
                self.$instance.find('.' + self.namespace + '-content').append(self.createNavigation('previous')).append self.createNavigation('next')
                return
                
            afterContent: ->
                $slideshow = this
                $gallery = $(@$currentTarget).parents(galleryWrapper)
                $thumbs = $gallery.find('a')
                $navigation = @$navigation or $('<div>', class: 'navigation')
    
                if $thumbs.length < 2
                    $('.featherlight-previous').remove()
                    $('.featherlight-next').remove()
            
                if !@$navigation and $thumbs.length > 1
                    
                    # Add listener for manual thumb flipping
                    flThumbnailFlipper()
                    
                    # Navigation
                    $thumbs.each ->
                        $thumbImg = $('<img>', src: $(this).attr('href'))
                        $thumb = $('<a>',
                            alt: $(this).attr('alt')
                            href: '#'
                            html: $thumbImg)
                        $thumb.on 'click', (e) ->
                            e.preventDefault()
                            navigationTarget = $(this).index()
                            $slideshow.navigateTo navigationTarget
                            $thumb.addClass 'active'
                            $thumb.siblings().removeClass 'active'
                            flThumbnailScroll $navigation, $thumb
                            return
                        $navigation.append $thumb
                        return
                        
                    @$content.after $navigation
                    openingThumbIndex = @$currentTarget.index()
                    openingThumbIndex++
                    openingThumb = $navigation.find('a:nth-child(' + openingThumbIndex + ')')
                    openingThumb.addClass 'active'
                    flThumbnailScroll $navigation, openingThumb
                    
                @$navigation = $navigation
                return
    
            afterClose: ->
                $(document).off 'keydown'
                $('body').attr('style', '')

export default _engageGalleryMultiple