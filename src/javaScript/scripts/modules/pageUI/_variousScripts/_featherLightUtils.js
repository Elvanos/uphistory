var _featherLightUtils = {
    displayContent: function(content,alertType){
        var container = $("#featherlight-custom-content");
        if(container.length === 0){
            container = $("<div />", {class: "lightboxFLContent", id: "featherlight-custom-content", style: "display: none;"});
            $("body").append(container);
        }
       switch(alertType) {
          case 'success':
             content = '<div class="alert -success">'+content+'</div>';
             break;
          case 'error':
             content = '<div class="alert -error">'+content+'</div>';
             break;
       }

       container.html(content);
        $.featherlight("#featherlight-custom-content");
        $(".featherlight-content #featherlight-custom-content").show();
    }
};
export default _featherLightUtils;