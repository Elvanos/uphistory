_dynamicHeight = (app, module, template) ->
    
    globals = app.globals

    # Fish for filter
    filterElement = $('.js-filterTop-dashboard')

    # Set values before function loads
    resizeObj =
        
        masterWrapper: $('.js-pageContent')
        headerWrapper: $('.js-header')
        headerMenuWrapper: $('.js-headerMenu')
    
    # Resize function
    resize = () ->
    
        windowWidth = window.innerWidth

        console.log windowWidth
        
        # Set local vars
        headerHeight = resizeObj.headerWrapper.outerHeight(true)
        masterWrapper = resizeObj.masterWrapper
        
        # Take in account the possible fixed filter
        if filterElement.length > 0
            resizeObj.filterTop = filterElement
            
        if resizeObj.filterTop and windowWidth > globals.BSQ_MD
            filterHeight = resizeObj.filterTop.outerHeight()
            
        # If below 1200 width, subtract submenu height from the variable
        if windowWidth < globals.BSQ_MD
            headerMenuHeight = resizeObj.headerMenuWrapper.outerHeight()
            headerHeight = headerHeight - headerMenuHeight
        
        #Reset all CSS
        resizeObj.masterWrapper.removeAttr("style")
        resizeObj.headerWrapper.removeAttr("style")
        
        if resizeObj.filterTop and windowWidth > globals.BSQ_MD
            resizeObj.filterTop.removeAttr("style")
            
        # Calculate
        masterWrapperPadding = headerHeight

        console.log 'before filter: ' + masterWrapperPadding

        if resizeObj.filterTop and windowWidth > globals.BSQ_MD
            masterWrapperPadding = masterWrapperPadding + filterHeight
    
        # Resize
        console.log 'final: ' + masterWrapperPadding

        masterWrapper.css({ marginTop: masterWrapperPadding })
    
        if resizeObj.filterTop and windowWidth > globals.BSQ_MD
            filterPadding = headerHeight
            resizeObj.filterTop.css({ marginTop: filterPadding })
        return
    
    
    # React to resize
    $(window).on 'resize', () ->
        resize()
    
    # Run once on load
    resize()
    
    return

export default _dynamicHeight