_hambMenuControl = (app,module) ->
 
    
    # Get elements
    hambMenu = $(document).find('.js-headerMenu')
    hambMenuControl = $(document).find('.js-hamburgerControl')
    pageWrappers = $('html, body')

    hambMenuControl
        .on
            'click': ->
                
                if hambMenu.hasClass '-opened'
                    hambMenu.removeClass '-opened'
                    hambMenuControl.removeClass '-opened'
                    pageWrappers.removeClass '-isLocked'
                    
                else
                    hambMenu.addClass '-opened'
                    hambMenuControl.addClass '-opened'
                    pageWrappers.addClass '-isLocked'
                    
                    
                return
    
    
    return
    
export default _hambMenuControl