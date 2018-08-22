_loadMiniatures = (app, module) ->
    
    globals = app.globals
    
    input =
        path: globals.ajaxPaths.loadMiniaturesInfo
        amount: 20
        offset: globals.templateSettings.offsetMixed
        types: globals.templateSettings.miniatureTypes
        sortBy: globals.templateSettings.sortBy
        miniatureDateFrom: globals.templateSettings.miniatureDateFrom
        miniatureDateTo: globals.templateSettings.miniatureDateTo
        
    callbackBatch =
        loaderShowFunction: module._showAjaxLoader
        loaderHideFunction: module._hideAjaxLoader
        outputFunction: module._appendMiniatures
        failFunction: module._ajaxLoaderError

    ### Sends function arrays to run after AJAX call
        @beforeSendBatch = fires before ajax even starts
        @completeBatch = fires on any kind of completion (even error)
        @successBatch = fires on successull AJAX call
        @errorBatch = fires on error AJAX call
    ###

    callbackBatch =
        beforeSendBatch: [
            module._showAjaxLoader
        ]
        completeBatch: [
            module._hideAjaxLoader
        ]
        successBatch: [
            module._appendMiniatures
        ]
        errorBatch: [
            module._ajaxLoaderError
        ]

    # Load miniature data
    subModule = module
    app.modules.globalFunctions.ajaxLoadMiniaturesData(app, module, subModule, input, callbackBatch)


export default _loadMiniatures