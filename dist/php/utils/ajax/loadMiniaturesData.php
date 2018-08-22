<?php

// EXAMPLE INPUT STRUCTURE
    /*
        Array(
            [amount] => X
            [types] => Array
                (
                    [0] => X
                    [1] => X
                    ...
                )
            [offset] => X
            [sortBy] => X
            [miniatureDateFrom] => X
            [miniatureDateTo] => X
        )
    */

// POSSIBLE INPUT VALUES
    /*
        offset: any number, starts at 0 by default
        amount: any number
        types: picture, album, document, locality, event, audio, video
        sortBy: newest / mostPopular
        miniatureDateFrom: any number
        miniatureDateTo: any number
    */

// Post data for debugg
    //print_r($_POST);

echo '
    [
        {
            "miniatureLink": "https://www.google.com/",
            "usesLightBox": false,
            "miniatureType": "-album",
            "miniatureTitleTag": "album",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
          {
            "miniatureLink": "/uh/dist/php/layout/globals/flGlobalImageView.php",
            "usesLightBox": "true",
            "miniatureType": "-picture",
            "miniatureTitleTag": "picture",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
          {
            "miniatureLink": "https://www.google.com/",
            "usesLightBox": "false",
            "miniatureType": "-locality",
            "miniatureTitleTag": "locality",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
          {
            "miniatureLink": "https://www.google.com/",
            "usesLightBox": "false",
            "miniatureType": "-event",
            "miniatureTitleTag": "event",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
         {
            "miniatureLink": "/uh/dist/php/layout/globals/flGlobalImageView.php",
            "usesLightBox": "true",
            "miniatureType": "-video",
            "miniatureTitleTag": "video",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
          {
            "miniatureLink": "/uh/dist/php/layout/globals/flGlobalImageView.php",
            "usesLightBox": "true",
            "miniatureType": "-audio",
            "miniatureTitleTag": "audio",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
                {
            "miniatureLink": "https://www.google.com/",
            "usesLightBox": "false",
            "miniatureType": "-album",
            "miniatureTitleTag": "album",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        },
          {
            "miniatureLink": "/uh/dist/php/layout/globals/flGlobalImageView.php",
            "usesLightBox": "true",
            "miniatureType": "-picture",
            "miniatureTitleTag": "picture",
            "miniatureBackground": "images/placeholders/contentImage.png",
            "miniatureDescription": "Karlovy vary 1858",
            "miniatureTitle": "Karlovy vary 1858",
            "miniatureSubtitle": "Velké album / 20 fotek",
            "miniatureAuthor": "Radek Kovalíček"            
        }
    ]';
?>