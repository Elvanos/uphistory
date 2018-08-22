var _formUtils = {
    formatErrors: function (errorObject) {
        var errorString = $("<div />");
        $.each(errorObject, function (attr, error) {
            $.each(error, function (i, err) {                
                var p = $("<p />");
                p.text(err);
                errorString.append(p);
            });
        });
        return errorString;
    }
};
export default _formUtils;
