$(function () {
    $.scrollIt({
        upKey: 38,
        downKey: 40,
        scrollTime: 900,
        easing: 'linear'
    });
});
$(window).load(function () {
    $("body").css("background-color", "white");
    $("body").css("background-color", "#fafafa");
    $("div.nav").show();
    $("div.footer").show();
    $("div.wrapper").show();
    $("div.aboutMe").show();
});