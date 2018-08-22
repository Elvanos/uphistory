manager = (app, module, template) ->
    
    
    switch template
        when 'homepage'
            module = module.homepage
            module._homepageSlider(app, module)
            module._loginForm(app)
            module._signUpForm(app)
            module._forgottenPasswordRequestForm(app)
            homeData = $("#js-home-config").data()
            module._home(app, module, homeData)
            module._contactForm(app)
    
        when 'dashboard'
            module = module.dashboard
            module._infiniteAjaxLoader(app, module)
            module._loadMiniatures(app, module)
            module._searchForm(app)

        when 'dashboardPersonal'
            module = module.dashboardPersonal
            
            subModule = module.sliderFollowed
            subModule._slider(app, module, subModule)

            # Load first batch of miniatures on load
            #Number is offset
            subModule._loadMiniatures(app, module, subModule, 0)


            subModule = module.sliderFavorites
            subModule._slider(app, module, subModule)

            # Load first batch of miniatures on load
            #Number is offset
            subModule._loadMiniatures(app, module, subModule, 0)

            subModule = module.sliderNewest
            subModule._slider(app, module, subModule)

            # Load first batch of miniatures on load
            #Number is offset
            subModule._loadMiniatures(app, module, subModule, 0)

export default manager