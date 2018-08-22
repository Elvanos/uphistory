_navigationResizer = () ->
    
    $.featherlight.defaults.onResize = () ->
    
        #Resize navigation based on image above it
        flImage = $(document).find '.featherlight-content .featherlight-image'
        if flImage.length isnt 0
            flImageWidth = flImage.innerWidth()
            $(document)
                .find '.featherlight-content .navigation'
                .css 'width', flImageWidth

    return
    
export default _navigationResizer