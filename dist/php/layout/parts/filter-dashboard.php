<form action="">
    <div class="M_headerFilter js-filterTop-dashboard" data-max-overall="2018" data-min-overall="1500" data-max-current="1920"
        data-min-current="1720">
        <div class="M_headerFilter__filterElement">

            <div class="M_headerFilter__filterElement__label">
                Období
            </div>

            <div class="M_headerFilter__filterElement__input">
                <div class="E_slider js-filterTop-dashboard-slider"></div>
            </div>

            <div class="M_headerFilter__filterElement__input">
                <div class="js-filterTop-dashboard-input">
                    <div id="js-filterTop-dashboard-input-visible"></div>
                    <input id="js-filterTop-dashboard-input-invisMax" type="hidden">
                    <input id="js-filterTop-dashboard-input-invisMin" type="hidden">
                </div>
            </div>

        </div>

        <div class="formDivider"></div>

        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-picture" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-picture"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-picture">obrázky</label>
            </div>
        </div>

        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-album" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-album"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-album">alba</label>
            </div>
        </div>


        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-event" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-event"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-event">události</label>
            </div>
        </div>

        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-place" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-place"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-place">lokality</label>
            </div>
        </div>

        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-video" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-video"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-video">videa</label>
            </div>
        </div>

        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-audio" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-audio"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-audio">audio</label>
            </div>
        </div>

        <div class="M_headerFilter__filterElement">
            <div class="M_headerFilter__filterElement__input">
                <input id="js-filterTop-dashboard-input-type-document" type="checkbox">
                <label class="fancyCheckbox" for="js-filterTop-dashboard-input-type-document"></label>
            </div>
            <div class="M_headerFilter__filterElement__label">
                <label for="js-filterTop-dashboard-input-type-document">dokumenty</label>
            </div>
        </div>

        <?php if ($params['layout'] == 'dashboard'):?>
            <div class="formDivider"></div>

            <div class="M_headerFilter__filterElement">
                <div class="M_headerFilter__filterElement__input">
                    <input id="js-filterTop-dashboard-input-sort-newest" checked name="js-filterTop-dashboard-input-sort" type="radio">
                    <label class="fancyRadio" for="js-filterTop-dashboard-input-sort-newest"></label>
                </div>
                <div class="M_headerFilter__filterElement__label">
                    <label for="js-filterTop-dashboard-input-sort-newest">nejnovější</label>
                </div>
            </div>

            <div class="M_headerFilter__filterElement">
                <div class="M_headerFilter__filterElement__input">
                    <input id="js-filterTop-dashboard-input-sort-popular" name="js-filterTop-dashboard-input-sort" type="radio">
                    <label class="fancyRadio" for="js-filterTop-dashboard-input-sort-popular"></label>
                </div>
                <div class="M_headerFilter__filterElement__label">
                    <label for="js-filterTop-dashboard-input-sort-popular">populární</label>
                </div>
            </div>
        <?php endif; ?>

        <div class="formDivider"></div>


        <div class="M_headerFilter__filterElement">
            <div class="button -green js-formSubmitter">Filtrovat</div>
        </div>

    </div>
</form>