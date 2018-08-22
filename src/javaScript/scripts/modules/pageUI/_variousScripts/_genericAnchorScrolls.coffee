_genericAnchorScrolls = (app,module) ->
    
    $(document)
        .on 'click', 'a.js-anchorLink', (e)->
            e.preventDefault()
            anchorSelector = $(@).attr('href')
            anchor = $(anchorSelector)
            
            $('html').scrollTo anchor
            $('body').scrollTo anchor
            
            return
    
    return

export default _genericAnchorScrolls