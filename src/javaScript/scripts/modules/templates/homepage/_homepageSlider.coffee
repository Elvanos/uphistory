_homepageSlider = (app,module) ->
    
    $('.js-carouselHomepage')
        .slick
            slidesToShow: 1
            slidesToScroll: 1
            autoplay: true
            autoplaySpeed: 3000
            arrows: true
            
    return


export default _homepageSlider