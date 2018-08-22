var _signUpForm = function _signUpForm(app) {
   $(document).on("submit", "#sign-up-form", function (e) {
      e.preventDefault();
      var form = $(this);
      $.ajax(form.attr("action"), {
         method: "post",
         type: "post",
         data: form.serialize(),
         dataType: "json",
         error: function () {
            alert(texts["error"]);
         },
         success: function (data) {
            if (data.success) {
               form.text(data.data);
            } else {
               var formError = form.find(".js-error");
               formError.addClass('alert -error');
               formError.html(app.modules.pageUI._variousScripts._formUtils.formatErrors(data.errors));
               form.closest(".featherlight-content").scrollTop(0);
            }
         }
      });
   });
};
export default _signUpForm;

