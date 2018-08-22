_hideAjaxLoader = (app, module, subModule) ->

    locals = module.locals
        
    loaderDOM = $(locals.sliderFollowed.loaderSelector)
    
    loaderDOM.fadeOut(150)

export default _hideAjaxLoader