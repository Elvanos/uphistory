_overflowManager = () ->

    # Lock body scrolling
    $.featherlight.defaults.afterOpen = () ->
        $(document)
            .find 'body'
            .css 'overflow', 'hidden'
    
    # Unlock body scrolling
    $.featherlight.defaults.afterClose = () ->
        $(document)
            .find 'body'
            .css 'overflow', 'inherit'
    
    return
    
export default _overflowManager