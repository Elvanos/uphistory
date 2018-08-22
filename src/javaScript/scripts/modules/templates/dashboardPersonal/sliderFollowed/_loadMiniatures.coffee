_loadMiniatures = (app, module, subModule, offset) ->
    
    globals = app.globals

    
    input =
        path: globals.ajaxPaths.loadMiniaturesPersonalFollowed
        amount: 24
        offset: offset
        types: globals.templateSettings.miniatureTypes
        miniatureDateFrom: globals.templateSettings.miniatureDateFrom
        miniatureDateTo: globals.templateSettings.miniatureDateTo
    
    ### Sends function arrays to run after AJAX call
        @beforeSendBatch = fires before ajax even starts
        @completeBatch = fires on any kind of completion (even error)
        @successBatch = fires on successull AJAX call
        @errorBatch = fires on error AJAX call
    ###

    callbackBatch =
        beforeSendBatch: [
            subModule._disableArrow
            subModule._showAjaxLoader
        ]
        completeBatch: [
            subModule._enableArrow
            subModule._hideAjaxLoader
        ]
        successBatch: [
            subModule._appendMiniatures
        ]
        errorBatch: [
            #TODO
            #subModule._ajaxLoaderError
        ]

    # Load miniature data
    app.modules.globalFunctions.ajaxLoadMiniaturesData(app, module, subModule, input, callbackBatch)

export default _loadMiniatures