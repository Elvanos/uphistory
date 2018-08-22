ajaxLoadMiniaturesData = (app, module, subModule, input, callbackBatch) ->
    
    globals = app.globals
    
    #console.log input
    
    
    $.ajax(
        url: input.path
        method: 'POST'
        data: input
        
    
        beforeSend: () ->
            # Callbacks further functions specified by the input IF one exists
            if callbackBatch and callbackBatch.beforeSendBatch
                for singleFunction in callbackBatch.beforeSendBatch
                    singleFunction(app, module, subModule)
        
        complete: () ->
            # Callbacks further functions specified by the input IF one exists

            if callbackBatch and callbackBatch.completeBatch
                for singleFunction in callbackBatch.completeBatch
                    singleFunction(app, module, subModule)
        
        success: (response) ->
            # Callbacks further functions specified by the input IF one exists
            if callbackBatch and callbackBatch.successBatch
                
                # Check if we got a valid JSON
                try
                    response = $.parseJSON response
                    
                catch error
                    console.log 'Server data response is not valid JSON!'
                    console.log response
                    
                unless error?

                    # Check if we have anything in JSON, if not, throw an error
                    if response.length > 0
                        if callbackBatch and callbackBatch.successBatch
                            for singleFunction in callbackBatch.successBatch
                                singleFunction(app, module, subModule, response)
                    else
                        if callbackBatch and callbackBatch.errorBatch
                            for singleFunction in callbackBatch.errorBatch
                                singleFunction(app, module, subModule)
        
        
        error: (xhr, ajaxOptions, thrownError) ->
            # DEBUGG
            #console.log xhr
            #console.log thrownError

            # Callbacks further functions specified by the input IF one exists
            if callbackBatch and callbackBatch.errorBatch
                for singleFunction in callbackBatch.errorBatch
                    singleFunction(app, module, subModule)
        )
    
    return

export default ajaxLoadMiniaturesData