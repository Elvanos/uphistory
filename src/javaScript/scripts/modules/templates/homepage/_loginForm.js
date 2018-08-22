var _loginForm = function _loginForm(app){
    $(document).on("submit", "#login-form", function(e){
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
                    window.location = form.data("redirect");
                }else{
                   var formError = form.find(".js-error");
                   formError.addClass('alert -error');
                   formError.html(app.modules.pageUI._variousScripts._formUtils.formatErrors(data.errors));
                }
            }
        });
    });    
};
export default _loginForm;