$(document).ready(function() {

    var enlarged = false;

    $("#wp_menu_button").click(function () {
        
        $(this).stop(true, false).animate({
            width: enlarged ? 100 : 400,
            height: enlarged ? 55 : 400,
            top: enlarged ? "5%" : "10%",
            right: enlarged ? "4%" : "8%"
        }, 300);

        enlarged = !enlarged;

    });
});