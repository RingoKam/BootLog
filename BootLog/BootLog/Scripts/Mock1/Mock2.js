$(document).ready(function () {

    var wp_m_downsized = false;

    $("#wp_menu_button").click(function () {

        $("#wp_posts_button").stop(true, false).animate({
            top: wp_m_downsized ? "10%" : "-10%"
        }, 300);

        $(".menu_option").toggle();

        $(this).stop(true, false).animate({
            width: wp_m_downsized ? 100 : 300,
            height: wp_m_downsized ? 100 : 1000,
            top: wp_m_downsized ? "17%" : "-10%",
            right: wp_m_downsized ? "14%" : "-1%"
        }, 300);

        $(this).find("p").stop(true, false).animate({
            margin: wp_m_downsized ? "0px" : "160px 0px 0px 0px"
        }, 300);

        wp_m_downsized ? $(this).css("line-height", "100px") : $(this).css("line-height", "50px");

        wp_m_downsized = !wp_m_downsized;
    });

    var wp_p_downsized = false;

    $("#wp_posts_button").click(function () {

        $(".wp_content").toggle();
        $("#wp_menu_button").toggle();
        $(".page_flip").toggle();

        $(this).stop(true, false).animate({
            width: wp_p_downsized ? 50 : "80%",
            height: wp_p_downsized ? 50 : "60%",
            top: wp_p_downsized ? "10%" : "11%",
            right: wp_p_downsized ? "20%" : "11%"
        }, 300);

        //$(this).find("p").stop(true, false).animate({
        //    margin: enlarged ? "0px" : "160px 0px 0px 0px"
        //}, 300);

        //enlarged ? $(this).css("line-height", "100px") : $(this).css("line-height", "50px");

        wp_p_downsized ? $(this).removeClass("wp_active") : $(this).addClass("wp_active");

        wp_p_downsized ? $("#wp_list").find(".test").remove() : $("#wp_list").append("<p class='test'>TEST</p>");

        wp_p_downsized = !wp_p_downsized;
    });


    $(".page_flip").mouseenter(function () {
        var leftSide = $(this).attr("id") === "page_flip_l" ? true : false;
        $(this).stop(true, false).animate({
            left: leftSide ? "-3%" : "auto",
            right: leftSide ? "auto" : "-3%"
        }, 300);

    });

    $(".page_flip").mouseleave(function () {
        var leftSide = $(this).attr("id") === "page_flip_l" ? true : false;
        $(this).stop(true, false).animate({
            left: leftSide ? "-11.7%" : "auto",
            right: leftSide ? "auto" : "-8.8%"
        }, 300);
    });

});