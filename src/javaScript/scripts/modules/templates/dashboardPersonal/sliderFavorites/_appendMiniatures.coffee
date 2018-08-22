_appendMiniatures = (app, module, subModule, data) ->

    globals = app.globals
    locals = module.locals
    
    sliderElement = $(locals.sliderFavorites.sliderSelector)

    # Wait for the slider animation to finish
    setTimeout (->

        for miniatureData in data

            miniatureDOM = app.modules.globalFunctions.buildElementMiniature(app, miniatureData)
            sliderElement.slick('slickAdd', miniatureDOM)

        ), 500
    
    
    return
export default _appendMiniatures