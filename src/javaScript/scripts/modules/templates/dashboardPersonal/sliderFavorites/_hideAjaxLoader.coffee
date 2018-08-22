_hideAjaxLoader = (app, module, subModule) ->

    locals = module.locals
        
    loaderDOM = $(locals.sliderFavorites.loaderSelector)
    
    loaderDOM.fadeOut(150)

export default _hideAjaxLoader