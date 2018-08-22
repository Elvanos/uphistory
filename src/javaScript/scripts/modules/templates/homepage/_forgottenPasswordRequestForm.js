var _forgottenPasswordRequestForm = function _forgottenPasswordRequestForm(app){
    $(document).on("submit", "#forgotten-password-request-form", function(e){ 
        e.preventDefault();
        var form = $(this);
        $.ajax(form.attr("action"), {
            method: "post",
            type: "post",
            data: form.serialize(),
            dataType: "json",
            error: function(){
                alert(texts["error"]);
            },
            success: function(data){
                if(data.success){
                    //form.text(data.data);
                   var newContent = $("<div/>", {
                      class: 'alert -success',
                      text: data.data
                   });
                   form.html(newContent);
                }else{
                   var formError = form.find(".js-error");
                   formError.addClass('alert -error');
                   formError.text(data.data);
                }
            }
        });
    });
};
export default _forgottenPasswordRequestForm;