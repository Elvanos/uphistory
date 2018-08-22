_hideAjaxLoader = (app, module, subModule) ->

    locals = module.locals
        
    loaderDOM = $(locals.sliderNewest.loaderSelector)
    
    loaderDOM.fadeOut(150)

export default _hideAjaxLoader