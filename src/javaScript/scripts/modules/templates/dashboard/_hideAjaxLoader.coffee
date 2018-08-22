_hideAjaxLoader = (app, module, subModule) ->
    
    loaderDOM = $('.js-loadSpinner')
    
    loaderDOM.fadeOut(150)

export default _hideAjaxLoader