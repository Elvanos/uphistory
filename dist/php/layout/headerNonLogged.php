<header class='M_header js-header'>

    <div class="M_header__alwaysVisible ">

        <div class="M_header__alwaysVisible__logo">
            <a href="#">
                <img src="images/logos/UH_logo_white.png">
            </a>
        </div>

        <div class="M_header__alwaysVisible__searchWrapper">
            <form action="">

                <div class="formElement">
                    <input class='M_header__alwaysVisible__searchWrapper__searchField' type="text"
                           placeholder='Vyhledání'>
                </div>

                <div class="formElement">
                    <div class="button -green -icon -search js-formSubmitter"></div>
                </div>

                <div class="formDivider"></div>

                <div class="formElement">
                    <a class="button -green -icon -hasText -map">
                        Mapa
                    </a>
                </div>

            </form>
        </div>
    </div>

    <div class="E_hamburgerControl js-hamburgerControl -header">
        <div class="E_hamburgerControl__line"></div>
        <div class="E_hamburgerControl__line"></div>
        <div class="E_hamburgerControl__line"></div>
    </div>

    <div class="E_hamburgerMenu -header js-headerMenu">
        <div class="E_hamburgerMenu__accountManagement ">

            <div class="formElement">
                <a href="/uh/php/layout/globals/flGlobalLogin.php" data-featherlight="ajax">
                    <div class="button -green">
                        Přihlásit se
                    </div>
                </a>
            </div>

            <div class="formDivider"></div>

            <div class="formElement">
                <a href="/uh/php/layout/globals/flGlobalRegister.php" data-featherlight="ajax">
                    <div class="button -green">
                        Zaregistrovat se
                    </div>
                </a>
            </div>
        </div>

        <div class="E_dropdown -headerInfo js-popup">


            <div class="E_dropdown__pick -main js-popupTrigger" title="Informace o UpHistory">
                <img src="images/icons/icon_info.png" alt="Informace">
                <div class="mobileDescription">Informace</div>
                <div class="E_dropdown__pick__marker"></div>
            </div>


            <div class="E_dropdown__menu">
                <div class="E_dropdown__pick">
                    <a href="/uh/php/layout/globals/flGlobalTermsAndConditions.php"
                       data-featherlight="ajax">Podmínky použití</a>
                </div>
                <div class="E_dropdown__pick">
                    <a href="/uh/php/layout/globals/flGlobalTermsSafety.php"
                       data-featherlight="ajax">Ochrana osobních údajů</a>
                </div>
                <div class="E_dropdown__pick">
                    <a href="/uh/php/layout/globals/flGlobalContact.php"
                       data-featherlight="ajax">Kontaktujte
                        nás</a>
                </div>
            </div>

        </div>

        <div class="E_dropdown -headerLanguages js-popup">


            <div class="E_dropdown__pick -main js-popupTrigger" title="Výběr jazyka">
                <img src="images/languages/CZ.png" alt="Česky">
                CZ
                <div class="mobileDescription">Výběr jazyka</div>

                <div class="E_dropdown__pick__marker"></div>
            </div>


            <div class="E_dropdown__menu" aria-labelledby="langMenu">
                <div class="E_dropdown__pick">
                    <a href="#"><img src="images/languages/EN.png" alt="English">EN</a>
                </div>
                <div class="E_dropdown__pick">
                    <a href="#"><img src="images/languages/DE.png" alt="Deutsch">DE</a>
                </div>
                <div class="E_dropdown__pick">
                    <a href="#"><img src="images/languages/FR.png" alt="François">FR</a>
                </div>
                <div class="E_dropdown__pick">
                    <a href="#"><img src="images/languages/PL.png" alt="Polski">PL</a>
                </div>
            </div>

        </div>
    </div>


</header>