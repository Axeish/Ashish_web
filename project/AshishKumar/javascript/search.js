/*

Author: Ashish Kumar
    @copyright 2014

this is a javascript file that is used to fetch data from artsy api and display artists or artwork

reference : api.artsy


*/

function clearContents() {

    $("#content1").html("");
    $("#Artistcontents").html("");
    $("#Artworkcontents").html("");

}
$(document).ready(function () {

    $("#submitArtist").click(function () {

        clearContents();
        var artist = document.getElementById("searchString").value;
        var url = "";
        var url1 = "https://api.artsy.net/api/search?q=";
        var url2 = artist;
        var url3 = "&Token:";
        var searchURL = url1 + url2;
        url = url1 + url2;
        // fixed type search issue 


        if (document.getElementById("artist").checked == true) {
            // url for artist
            var url5 = url + " more:pagemap:metatags-og_type:artist" + url3;
            token = retrieveResult2(url5);
        }
        else {
            // url for artworks
            var url6 = url + " more:pagemap:metatags-og_type:artwork" + url3;
            token = retrieveResult1(url6);
        }

    });

    function retrieveResult1(url) {
        // function to retrieve artwork
        var tokenURL = "https://api.artsy.net/oauth2/access_token?client_id=e63725515178be8b7bed&client_secret=6f46f16236a7eaabef6f3dc416a14083&grant_type=credentials&email=kumar.as@husky.neu.edu&password=ashabc";
        $.getJSON(tokenURL, function (result) {
            token = result.access_token;

            //ajax call
            $.ajax({
                url: url,
                type: 'GET',
                dataType: 'json',
                success: function (result) {
                    // if not found
                    if (result.total_count == 0) {
                        var text = document.createTextNode("No results match the search criteria. Please try some different search data");
                        document.getElementById("content1").appendChild(text);
                    }
                    $.each(result._embedded.results, function (i, results) {
                        switch (results.type) {

                            //if type is artwork
                            case "Artwork":
                                var para = document.createElement("p");
                                if (results._links.thumbnail.href != "/images/icon-152.png") {
                                    var linebreak = document.createElement("br");
                                    var artwork = document.createElement("a");
                                    artwork.innerText = results.title;
                                    artwork.setAttribute('href', results._links.permalink.href+"/zoom");
                                    artwork.setAttribute('target', '_blank');
                                   
                                    var img = document.createElement("img");
                                    img.setAttribute('src', results._links.thumbnail.href);
                                    para.appendChild(artwork);
                                    para.appendChild(linebreak);
                                    para.appendChild(img);
                                }
                                document.getElementById("Artworkcontents").appendChild(para);
                                break;
                        }
                    });
                },
                error: function () {
                    //error
                    alert("An error has occurred!! Please try again later");
                },
                fail: function () {
                    //fail
                    alert("Some failure has occurred!! Please try again later");
                },
                beforeSend: function (jqXHR, settings) {
                    jqXHR.setRequestHeader("X-Access-Token", token);
                }
            });
        });
    }

    function retrieveResult2(url) {
        // to retrieve artists

        var tokenURL = "https://api.artsy.net/oauth2/access_token?client_id=e63725515178be8b7bed&client_secret=6f46f16236a7eaabef6f3dc416a14083&grant_type=credentials&email=kumar.as@husky.neu.edu&password=ashabc";
        $.getJSON(tokenURL, function (result) {
            token = result.access_token;

            $.ajax({
                url: url,
                type: 'GET',
                dataType: 'json',
                success: function (result) {
                    if (result.total_count == 0) {
                        var text = document.createTextNode("No results match the search criteria. Please try some different search data");
                        document.getElementById("content1").appendChild(text);
                    }
                    $.each(result._embedded.results, function (i, results) {
                        switch (results.type) {

                            //of type artist
                            case "Artist":
                                var linebreak = document.createElement("br");
                                var para = document.createElement("p");
                                var artist = document.createElement("a");
                                artist.innerText = results.title;
                                artist.setAttribute('href', results._links.permalink.href);
                                artist.setAttribute('target', '_blank');
                                para.appendChild(artist);
                                para.appendChild(linebreak);
                                document.getElementById("Artistcontents").appendChild(para);
                                break;

                        }
                    });
                },
                error: function () {
                    //error
                    alert("An error has occurred!! Please try again later");
                },
                fail: function () {
                    //fail
                    alert("Some failure has occurred!! Please try again later");
                },
                beforeSend: function (jqXHR, settings) {
                    jqXHR.setRequestHeader("X-Access-Token", token);
                }
            });
        });
    }
});