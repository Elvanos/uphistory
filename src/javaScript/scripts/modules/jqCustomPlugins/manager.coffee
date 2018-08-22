manager = (app,module,command) ->


    # Run for first load on each page
    if command is 'initiate'
        module._scrollTo(app,module)
    
export default manager