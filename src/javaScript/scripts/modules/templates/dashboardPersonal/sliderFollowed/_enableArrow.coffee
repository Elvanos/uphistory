_enableArrow = (app, module, subModule) ->

    locals = module.locals

    sliderElement = $(locals.sliderFollowed.sliderSelector)
    parentElement = sliderElement.closest('.js-carouselWrapper')
    rightArrowElement = parentElement.find('.js-arrowRight')

    # Allow click on the button once more

    # Wait for the slider animation to finish
    setTimeout (->
        rightArrowElement.removeClass('js-disabled -disabled')
        
        return
        ), 250

export default _enableArrow