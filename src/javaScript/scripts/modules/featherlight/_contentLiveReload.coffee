_contentLiveReload = (app,module) ->
    
    $(document).on 'click', '.js-flLiveReload', (event) ->
        
        event.preventDefault()
        
        # Where the click happened
        flLiveReload = $(this)
        
        # Get current box
        flBox = $(document).find '.featherlight-content'
        
        # In case someone is an idiot and calls this WITHOUT any lightbox existitng
        if flBox.length == 0
            return false
            
        # Get href and data type
        flDataHref = flLiveReload.attr 'href'
        flDataType = flLiveReload.data 'fllivereloadtype'
        
        # Clean up current lightbox
        flBox
            .children()
            .fadeOut '300'
            .remove()
        
        # Load AJAX type
        if flDataType == 'ajax'
            $(flBox)
                .load(flDataHref, ->
                    $(flBox).prepend '<span class="featherlight-close-icon featherlight-close">✕</span>'
                    return
                )
                .hide()
                .fadeIn '300'
            
        # Load OTHER THAN AJAX type
        if flDataType != 'ajax'
            $(flBox)
                .prepend '<span class="featherlight-close-icon featherlight-close">✕</span>'
            flReplaceContent = $(flDataHref)
                .clone()
            flBox
                .append(flReplaceContent)
                .hide()
                .fadeIn '300'
            
        return

export default _contentLiveReload