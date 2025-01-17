﻿$(function () {
    $("#getMovie").click(function () {
        var movieTitle=$("#movieTitle").val();    
        $.ajax({
            url: "http://myapifilms.com/imdb?title="+movieTitle+"&format=JSONP&aka=0&business=0&seasons=0&seasonYear=0&technical=0&filter=N&exactFilter=0&limit=1&lang=en-us&actors=N&biography=0&trailer=0&uniqueName=0&filmography=0&bornDied=0&starSign=0&actorActress=0&actorTrivia=0&movieTrivia=0&awards=0&moviePhotos=N&movieVideos=N",
            dataType: "jsonp",
            success: renderMovies
        });
    })
});
function renderMovies(movies) {
    var movie = movies[0];
    var title = movie.title;
    var year = movie.year;
    var plot = movie.plot
    var urlPoster = movie.urlPoster;
    var h4 = $("<h4>")
        .append("Name:  ").append(title);
    var p= $("<p>")
    .append("Year:   ").append(year).append("<br />").append(plot).append("</hr>");
    var img=$("<img>")
        .attr("src", urlPoster);            
    $(".content").empty().append(h4).append(p).append(img);
}
