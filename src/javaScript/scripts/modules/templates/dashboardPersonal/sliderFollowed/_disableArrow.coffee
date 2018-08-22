_disableArrow = (app, module, subModule) ->

    locals = module.locals

    sliderElement = $(locals.sliderFollowed.sliderSelector)
    parentElement = sliderElement.closest('.js-carouselWrapper')
    rightArrowElement = parentElement.find('.js-arrowRight')

    # Prevent further click until the script finishes
    rightArrowElement.addClass('js-disabled -disabled')
        
export default _disableArrow