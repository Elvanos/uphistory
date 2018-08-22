_scrollTo = (app,module) ->

    jQuery.fn.scrollTo = (elem, speed) ->
        
        headerheight = $('.js-header').outerHeight(true)
        
        currentlyScrolled = $(window).scrollTop()
        
        if speed is undefined
            speed = 500
        
        $(this)
            .animate({
                scrollTop: $(this).scrollTop() + $(elem).offset().top - headerheight - currentlyScrolled
            }, speed);
            
        return this;
    
    return

export default _scrollTo