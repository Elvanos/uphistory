_slider = (app, module, subModule) ->
    
    locals = module.locals

    # Load elements
    sliderElement = $(locals.sliderFollowed.sliderSelector)
    parentElement = sliderElement.closest('.js-carouselWrapper')
    rightArrowElement = parentElement.find('.js-arrowRight')
    leftArrowElement = parentElement.find('.js-arrowLeft')

    # Engage Slider
    sliderElement.slick
        slidesToShow: 4
        slidesToScroll: 4
        draggable: false
        autoplay: false
        arrows: false
        infinite: false
        responsive: [{

            breakpoint: 1199,
            settings: {
                slidesToShow: 3
                slidesToScroll: 3
            }

            }, {

            breakpoint: 991,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }

            }, {

            breakpoint: 767,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
            }]

    # Left arrow click
    leftArrowElement.on 'click', () ->
        sliderElement.slick('slickPrev')

        slickObject = sliderElement.get(0).slick

    
    # Right arrow right
    rightArrowElement.on 'click', () ->
        sliderElement.slick('slickNext')

        slickObject = sliderElement.get(0).slick

        # Check if we are at the end
        if slickObject.currentSlide >= slickObject.slideCount - slickObject.options.slidesToShow

            # Check if the arrow is disabled
            if not rightArrowElement.hasClass('js-disabled')
            
            # Get the data to expand the slider
                offset = slickObject.slideCount
                subModule._loadMiniatures(app, module, subModule, offset)

    return


export default _slider