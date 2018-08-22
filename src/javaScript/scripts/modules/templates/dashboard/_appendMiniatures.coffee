_appendMiniatures = (app, module, subModule, data) ->
    
    globals = app.globals
    miniatureBatch = ''
    
    miniatureWrapper = $('.js-dashboardContentWrapper')
    
    for miniatureData in data
        miniatureDOM = app.modules.globalFunctions.buildElementMiniature(app, miniatureData)
        miniatureBatch += miniatureDOM
        globals.templateSettings.offsetMixed++
    
    miniatureWrapper.append miniatureBatch
    
    # Disable scroll detection after appending
    globals.scrollDetectionLock = false

export default _appendMiniatures