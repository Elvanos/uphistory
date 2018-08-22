_showAjaxLoader = (app, module, subModule) ->

    locals = module.locals
        
    loaderDOM = $(locals.sliderFollowed.loaderSelector)

    loaderDOM.fadeIn(150)
    
export default _showAjaxLoader