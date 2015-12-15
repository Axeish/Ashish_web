/*

Author: Ashish Kumar
    @copyright 2014

this is a javascript file that is used to create slideshow of my works
reference : api.artsy


*/

$(document).ready(function () {
    $("#slideshow img:first").addClass("active");
    setInterval("slideshow()", 3000);
});

function slideshow() {
    //slideshow function will cretae slideshow of each element present in slideshow div
    var $active = $("#slideshow .active");
    var $next = ($("#slideshow .active").next().length > 0) ? $("#slideshow .active").next() : $("#slideshow img:first");

    $active.fadeOut(600, function () {
        $active.removeClass("active");
        $next.fadeIn(600).addClass("active");
    });
}