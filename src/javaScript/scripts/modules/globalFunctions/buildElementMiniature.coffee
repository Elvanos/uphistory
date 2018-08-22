buildElementMiniature = (app, input) ->
    
    loadInNewWindow = "target='_blank'"
    loadInLightbox = ''
    
    

    
    if input.usesLightBox is true or input.usesLightBox is "true"
        loadInNewWindow = ''
        loadInLightbox = "data-featherlight='ajax' data-featherlight-variant='imageWindow'"
    
    
    # Fix for buggy text formatting in background
    miniatureBackground = input.miniatureBackground
    miniatureBackground = 'url("' + miniatureBackground + '")'

    # Builds text representation of DOM
    miniatureDOM =
        "<div class='E_contentMiniature'>
            <a href='#{input.miniatureLink}' #{loadInNewWindow} #{loadInLightbox}>
                <div class='E_contentMiniature__ribbon #{input.miniatureType}' title='#{input.miniatureTitleTag}'></div>
                <div class='E_contentMiniature__overlay'></div>
                <div class='E_contentMiniature__background' style='background-image: #{miniatureBackground}'></div>
                <div class='E_contentMiniature__description'>#{input.miniatureDescription}</div>
                <div class='E_contentMiniature__hoverDescription'>
                <div class='E_contentMiniature__hoverDescription__title'>#{input.miniatureTitle}</div>
                    <div class='E_contentMiniature__hoverDescription__subTitle'>#{input.miniatureSubtitle}</div>
                    <div class='E_contentMiniature__hoverDescription__author'>
                        <div class='E_contentMiniature__hoverDescription__author__name'>#{input.miniatureAuthor}</div>
                    </div>
            
                </div>
            </a>
        </div>"
    
    return miniatureDOM

export default buildElementMiniature