globals =
    
    BSQ_XS: 768
    BSQ_SM: 991
    BSQ_MD: 1200
    scrollDetectionLock: false
    
    templateSettings:
        miniatureTypes: ['picture', 'album', 'document', 'locality', 'event', 'audio', 'video']
        sortBy: 'newest'
        miniatureDateFrom: 0
        miniatureDateTo: 2018
        offsetMixed: 0
        offsetPicture: 0
        offsetAlbum: 0
        offsetDocument: 0
        offsetLocality: 0
        offsetEvent: 0
        offsetAudio: 0
        offsetVideo: 0

    ajaxPaths:
        loadMiniaturesInfo: '../dist/php/utils/ajax/loadMiniaturesData.php',
        loadMiniaturesPersonalFollowed: '../dist/php/utils/ajax/loadMiniaturesData.php',
        loadMiniaturesPersonalFavorites: '../dist/php/utils/ajax/loadMiniaturesData.php',
        loadMiniaturesPersonalNewest: '../dist/php/utils/ajax/loadMiniaturesData.php',


export default globals