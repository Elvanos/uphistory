var _contactForm = function _contactForm(app){
    $(document).on("submit", "#contact-form", function(e){ 
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
                    form.text(data.data);
                }else{
                    form.find(".error").html(app.modules.pageUI._variousScripts._formUtils.formatErrors(data.errors));
                }
            }
        });
    });
};
export default _contactForm;