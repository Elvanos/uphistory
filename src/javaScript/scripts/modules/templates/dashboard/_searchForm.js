var _searchForm = function _searchForm(app){
    $(document).on("submit", "#record-search-form", function(){
        var dashboardDataWrapper = $('.js-filterTop-dashboard');
        var maxOverall = dashboardDataWrapper.data('max-overall');
        var minOverall = dashboardDataWrapper.data('min-overall');        
        
        var form = $(this);
        var yearFrom = form.find('#js-filterTop-dashboard-input-invisMin').val();
        form.find("#record-search-form-date-from").val(yearFrom == minOverall ? "" : yearFrom);
        var yearTo = form.find('#js-filterTop-dashboard-input-invisMax').val();
        form.find("#record-search-form-date-to").val(yearTo == maxOverall ? "" : (yearTo + "-12-31 23:59:59"));
    });
};
export default _searchForm;