_popups = (app,module) ->
    
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
        
    # Close all carets on opening a new one
    cleanUpCarets = (caretElement) ->
        
        allCarets = $('.js-popupTrigger.js-opened')
        for caret in allCarets
            caret = $(caret)
            
            if caret isnt caretElement
                closeCaret(caret)
      
        if caretElement?
            openCaret(caretElement)
    
            
            
    # Add popup listeners for closing or clicking outside
    addPopupCloseClickListener = () ->
        
        $(document)
            .on 'click', (e) ->
                clickTarget = $(e.target)
                
                clickTargetPopup = clickTarget.closest('.js-popup')
    
                # Click outside of popup or on a trigger
                if clickTargetPopup.length is 0 and not clickTarget.hasClass('js-popupTrigger')
                    cleanUpCarets()
    
    # Add popup listeners for opening for clicking
    addPopupOpenClickListener = () ->
        $(document)
            .on 'click', '.js-popupTrigger', (e) ->
                e.preventDefault()
                
                caretElement = $(@)
                cleanUpCarets(caretElement)
                
                
                
    
    # Add popup listeners for closing for hover
    addPopupCloseHoverListener = (caretElement) ->
        popup = caretElement.find('.js-popup')
        popup
            .on 'mouseleave', () ->
                cleanUpCarets() 
                popup.off 'mouseleave'
    
    # Add popup listeners for opening for hover
    addPopupOpenHoverListener = () ->
        $(document).find('.js-hoverPopupTrigger')
            .on 'mouseenter', () ->
                dataSelector = $(@).data 'target'
                caretElement = $('.js-popupTrigger[data-target="'+dataSelector+'"]')
                cleanUpCarets(caretElement)
                addPopupCloseHoverListener(caretElement)
                
    # React to clicks
    addPopupCloseClickListener()
    addPopupOpenClickListener()
    
    # React to hovers
    #addPopupOpenHoverListener()
   
   
    
    return
    
export default _popups