function clearContents() {
    $("#Artistcontents").html("");
    $("#Artworkcontents").html("");
}
$(document).ready(function () {
    var key = "../../getkey.aspx?apikey";
    var secretKey = "../../getkey.aspx?secret";
    var flag = 0;
    var passwd;
    var url;
    var token = "";
    var secret;
    generateURL();
    var artists;
    $("#ArtworkDetails").hide();

    function generateURL() {
        var getmy_key_result = $.ajax(key);
        getmy_key_result.fail(ErrorGettingKey);
        getmy_key_result.done(getkey);
    }

    function getkey(result) {
        passwd = result;
        //alert(passwd);
        getSecret();
    }

    function getSecret() {
        //alert("inside get secret");
        var getmy_secret_result = $.ajax(secretKey);
        getmy_secret_result.fail(ErrorGettingKey);
        getmy_secret_result.done(getsecret);
    }

    function getsecret(result) {
        secret = result;
        var tokenURL = "https://api.artsy.net/oauth2/access_token?client_id=4ca711359d8808b1614e&client_secret="
            + secret
            + "&grant_type=credentials&email=gadgil.r@husky.neu.edu&password="
            + passwd;
        getToken(tokenURL);
        //alert(secret);
    }

    function ErrorGettingKey() {
        alert("Error getting API key!");
    }

    function getToken(tokenURL) {
        //alert("inisde getTOkenURL()");
        $.ajax({
            url: tokenURL,
            dataType: "json",
            type: 'GET',
            cache: false,
        })
        .done(function (result) {
            token = result.access_token;
            alert(token);
        })
        .fail(function () {
            alert("Could not authenticate Token!!. Please try again later");
        })

        $("#submitArtist").click(function () {
            //alert("inside submit artsit");
            clearContents();
            var artist = document.getElementById("searchString").value;
            var url = "";
            var url1 = "https://api.artsy.net/api/search?q=";
            var url2 = artist;
            var url3 = "&Token:";
            var searchURL = url1 + url2;
            url = url1 + url2 + url3;
            searchOnArtsy(url);
        });

        function searchOnArtsy(url) {
            //alert("inside search on artsy");
            //alert(url);
            $.ajax({
                url: url,
                type: 'GET',
                dataType: 'json',
                cache: false,
                beforeSend: function (jqXHR, settings) {
                    jqXHR.setRequestHeader("X-Access-Token", token);
                }
            })
            .done(displayResults)
            .fail(function () {
                alert("Error retrieving data from the API");
            })
        }

        function displayResults(result) {
            if (result.total_count == 0) {
                var text = document.createTextNode("No results match the search criteria. Please try some different search data");
                document.getElementById("content").appendChild(text);
            }
            $.each(result._embedded.results, function (i, results) {
                switch (results.type) {
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

                    case "Profile":
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

                    default:
                        var para = document.createElement("p");
                        if (results._links.thumbnail.href != "/images/icon-152.png") {
                            var linebreak = document.createElement("br");
                            var title = document.createTextNode(results.title);
                            var img = document.createElement("img");
                            img.setAttribute('src', results._links.thumbnail.href);
                            para.appendChild(title);
                            para.appendChild(linebreak);
                            para.appendChild(img);
                        }
                        document.getElementById("Artworkcontents").appendChild(para);
                        break;
                }
            });
        }
    }
});