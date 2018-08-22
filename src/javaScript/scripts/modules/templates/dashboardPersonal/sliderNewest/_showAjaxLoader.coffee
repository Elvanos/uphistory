_showAjaxLoader = (app, module, subModule) ->

    locals = module.locals
        
    loaderDOM = $(locals.sliderNewest.loaderSelector)

    loaderDOM.fadeIn(150)
    
export default _showAjaxLoader