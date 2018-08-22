manager = (app, command) ->
    
    # Run for first load on each page
    if command is 'initiate'
    
        template = $(document).find('.js-pageWrapper').attr('id')
    
        # Run page jqCustom plugins module
        module = app.modules.jqCustomPlugins
        module.manager(app, module, 'initiate')
        
        # Run page UI module
        module = app.modules.pageUI
        
        moduleSub = module._variousScripts
        moduleSub._genericAnchorScrolls(app, moduleSub)
        moduleSub._popups(app, moduleSub)
        moduleSub._formSubmitter(app, moduleSub)
        
        moduleSub = module.headerMenu
        moduleSub._dynamicHeight(app, moduleSub, template)
        moduleSub._filterDateSlider(app, module)
        moduleSub._hambMenuControl(app, moduleSub)

        # Engage all Featherlight galleries on the page
        moduleSub = app.modules.featherlight
        moduleSub._contentLiveReload(app, moduleSub)
        moduleSub._overflowManager(app, moduleSub)
        moduleSub._navigationResizer(app, moduleSub)
        moduleSub._engageGalleryMultiple(app, moduleSub, '.js-flGallery', '.js-flGallery-thumbnail')
        
        
        # Load current template module section
        moduleSub = app.modules.templates
        if template.length > 0
            moduleSub.manager(app, moduleSub, template)
        else
            console.log 'Invalid template selector, please add a template to load to your page wrapper.'


export default manager