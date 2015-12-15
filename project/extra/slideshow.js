$(document).ready(function () {
    $("#slideshow img:first").addClass("active");
    setInterval("slideshow()", 3000);
});

function slideshow() {
    var $active = $("#slideshow .active");
    var $next = ($("#slideshow .active").next().length > 0) ? $("#slideshow .active").next() : $("#slideshow img:first");

    $active.fadeOut(600, function () {
        $active.removeClass("active");
        $next.fadeIn(600).addClass("active");
    });
}