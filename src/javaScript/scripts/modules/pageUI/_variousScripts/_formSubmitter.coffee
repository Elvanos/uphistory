_formSubmitter = (app,module) ->

    $(document).on 'click', '.js-formSubmitter', () ->
        submitButton = $(@)
    
        submitButton
            .closest 'form'
            .submit()
        
    return

export default _formSubmitter