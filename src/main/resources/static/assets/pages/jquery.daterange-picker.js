jQuery(document).ready(function () {
    // Date Range Picker
    $('body').on('focus',".input-daterange-datepicker", function(){
        $('.input-daterange-datepicker').daterangepicker({
            buttonClasses: ['btn', 'btn-sm'],
            applyClass: 'btn-default',
            cancelClass: 'btn-white'
        });
    });
});