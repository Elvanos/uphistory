_disableArrow = (app, module, subModule) ->

    locals = module.locals

    sliderElement = $(locals.sliderFavorites.sliderSelector)
    parentElement = sliderElement.closest('.js-carouselWrapper')
    rightArrowElement = parentElement.find('.js-arrowRight')

    # Prevent further click until the script finishes
    rightArrowElement.addClass('js-disabled -disabled')
        
export default _disableArrow