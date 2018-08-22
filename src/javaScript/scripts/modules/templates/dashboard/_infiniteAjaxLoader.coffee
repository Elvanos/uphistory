_infiniteAjaxLoader = (app, module) ->
    
    globals = app.globals
    
    # IE Bug fix, select both
    scrollContainer = $(window)
    scrollContainer.on 'scroll', () ->
    
        if globals.scrollDetectionLock is false
        
            scrollElement = $(this)
            documentScrollTop = document.documentElement.scrollHeight
            footerElement = $('.js-footer')
            
            #console.log scrollElement.scrollTop() + scrollElement.innerHeight()
            #console.log documentScrollTop
        
            if scrollElement.scrollTop() + scrollElement.innerHeight() >= documentScrollTop - footerElement.innerHeight()
                
                globals.scrollDetectionLock = true
                module._loadMiniatures(app, module)
            
            return
    
        
    return


export default _infiniteAjaxLoader