var _home = function home(app, module, config){
    if(config && config.showLoginForm){
        $("#login-form-link").trigger("click");
    }else{
        if(config && config.message){
            app.modules.pageUI._variousScripts._featherLightUtils.displayContent(config.message, 'success');
        }
    }
};
export default _home;
