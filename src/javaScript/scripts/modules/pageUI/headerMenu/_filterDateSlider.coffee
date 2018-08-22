_filterDateSlider = (app, module) ->
    
    globals = app.globals
    
    dashboardDataWrapper = $('.js-filterTop-dashboard')

    if dashboardDataWrapper.length > 0
        dashboardSlider = $('.js-filterTop-dashboard-slider')
        dashboardSliderInput = $('.js-filterTop-dashboard-input #js-filterTop-dashboard-input-visible')
        dashboardSliderInputHiddenMax = $('.js-filterTop-dashboard-input #js-filterTop-dashboard-input-invisMax')
        dashboardSliderInputHiddenMin = $('.js-filterTop-dashboard-input #js-filterTop-dashboard-input-invisMin')
        
        # Get data
        maxCurrent = dashboardDataWrapper.data('max-current')
        minCurrent = dashboardDataWrapper.data('min-current')
        maxOverall = dashboardDataWrapper.data('max-overall')
        minOverall = dashboardDataWrapper.data('min-overall')
        
        dashboardSlider.slider
            range: true
            min: minOverall
            max: maxOverall
            values: [
                minCurrent
                maxCurrent
            ]
            
            # On slide
            slide: (event, ui) ->
                dashboardSliderInput.text ui.values[0] + ' - ' + ui.values[1]
                dashboardSliderInputHiddenMin.val ui.values[0]
                dashboardSliderInputHiddenMax.val ui.values[1]
                return
        
        # On first load
        dashboardSliderInput.text dashboardSlider.slider('values', 0) + ' - ' + dashboardSlider.slider('values', 1)
        dashboardSliderInputHiddenMin.val dashboardSlider.slider('values', 0)
        dashboardSliderInputHiddenMax.val dashboardSlider.slider('values', 1)
        
    return

export default _filterDateSlider