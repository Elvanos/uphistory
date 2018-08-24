_popups = (app, module) ->
    
    # Open caret (opens popups via CSS)
    openCaret = (caretElement) ->
        caretElement.closest('.js-popup').addClass('js-opened')
        caretElement.closest('.js-popup').addClass('-opened')
        caretElement.addClass('js-opened')
        caretElement.addClass('-opened')
        
    # Close caret (closes popups via CSS)
    closeCaret = (caretElement) ->
        caretElement.closest('.js-popup').removeClass('js-opened')
        caretElement.closest('.js-popup').removeClass('-opened')
        caretElement.removeClass('js-opened')
        caretElement.removeClass('-opened')

    ###
        @ comamnd = close, open
        @ caretElement = jQuery element selector of the caret
    ###
    itterateCarets = (command, caretElement) ->

        if not caretElement?
            caretElement = ''
                    
        # Close all unnecesary carets
        caretElementsArray = $(document).find('.js-popupTrigger.js-opened')

        for caretItteration in caretElementsArray

            # Wrap it in jQ object, so we can compare properly
            caretItteration = $(caretItteration)

            # Check if the loop item is NOT the same as the input element and close it
            if !caretItteration.is(caretElement)

                closeCaret(caretItteration)

        # Open caret
        if command is 'open'
            openCaret(caretElement)

    # Add popup listeners for closing or clicking outside
    addPopupClickListener = () ->
        
        $(document)
            .on 'click', (e) ->
                clickTarget = $(e.target)
                
                caretElement = clickTarget.closest('.js-popupTrigger')

                # Check if we clicked inside the trigger
                if caretElement.length isnt 0

                    # Check if the triger is already opened, if it is, close the carets
                    if caretElement.hasClass('js-opened')
                        itterateCarets('close')
                        return

                    itterateCarets('open', caretElement)
                    return

                # Check if we click somewhere inside the dropdown, if we are, kill the script
                caretElement = clickTarget.closest('.js-popup').find('.js-popupTrigger')
                if caretElement.length isnt 0
                    return                    

                # If user clicked elsewhere, close everything
                itterateCarets('close')


                
    # React to clicks
    addPopupClickListener()

    return
    
export default _popups