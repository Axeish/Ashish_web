function clearContents() {
    $("#data").html("");
}
$(document).ready(function () {
    //alert("ready");
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
        })
        .fail(function () {
            alert("Could not authenticate Token!!. Please try again later");
        })

    }

    $("#submitArtist").click(function () {
        //alert("submit button clicked");
        clearContents();
        getArtistDetails();
    });

    function getArtistDetails() {
        //alert("inside artist details");
        //alert("secret" + secret);
        //alert("token before getToken" + token + "test");
        $.ajax({
            url: "https://api.artsy.net/api/artists/4d8b92684eb68a1b2c00009e",
            dataType: "json",
            type: 'GET',
            cache: false,
            beforeSend: function (jqXHR, settings) {
                jqXHR.setRequestHeader("X-Access-Token", token);
            }
        })
        .done(artistDetailsSuccess)
        .fail(artistDetailsFail)
    }

    function artistDetailsSuccess(result) {
        //alert("inside artist details success");
        var div = document.createElement("div");
        div.setAttribute('class', 'artistData');
        var name_para = document.createElement("p");
        var name = document.createTextNode("Name: " + result.name);
        name_para.appendChild(name);
        div.appendChild(name_para);

        var dob_para = document.createElement("p");
        var dob = document.createTextNode("Date of birth: " + result.birthday);
        dob_para.appendChild(dob);
        div.appendChild(dob_para);

        var hometown_para = document.createElement("p");
        var hometown = document.createTextNode("Hometown: " + result.hometown);
        hometown_para.appendChild(hometown);
        div.appendChild(hometown_para);

        var location_para = document.createElement("p");
        var location = document.createTextNode("Location: " + result.location);
        location_para.appendChild(location);
        div.appendChild(location_para);

        var nationality = document.createTextNode("Nationality: " + result.nationality);
        var nationality_para = document.createElement("p");
        nationality_para.appendChild(nationality);
        div.appendChild(nationality_para);

        var url = result._links.artworks.href;
        retrieveArtwork(url, div);

        document.getElementById("data").appendChild(div);
    }

    function retrieveArtwork(url, div) {
        $.ajax({
            url: url,
            type: 'GET',
            dataType: 'json',
            cache: false,
            beforeSend: function (jqXHR, settings) {
                jqXHR.setRequestHeader("X-Access-Token", token);
            }
        })
        .done(displayArtwork)
        .fail(function (){
            alert("Unable to retrieve artworks of the artist");
        })

        function displayArtwork(result){
            $.each(result._embedded.artworks, function (i, results) {
                var para = document.createElement("p");
                var title = document.createTextNode("Artwork Title: " + results.title);
                para.appendChild(title);

                var linebreak = document.createElement("br");
                para.appendChild(linebreak);
                var img = document.createElement("img");
                img.setAttribute('src', results._links.thumbnail.href);
                para.appendChild(img);
                document.getElementById("data").appendChild(para);
            });
        }
    }
    function artistDetailsFail() {
        alert("failure");
    }
});