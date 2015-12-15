
/*

Author: Ashish Kumar
    @copyright 2014

this is a javascript file that is used to fetch profile of artist and also information related to the artworks made by them

reference : api.artsy


*/


function clearContents() {
    //will clear the content
    $("#gallery").html("");
    $("#ArtistProfile").html("");
    $("#gal1").html("");
}
$(document).ready(function () {

    $("li").click(function () {
        //when artistbut button is pressed do the following

        clearContents();
       
       
        var e = this.id;
        //var strUser = e.options[e.selectedIndex].value;
        var url = "";
        var urlart = "";
        var url3 = "https://api.artsy.net/api/artworks?artist_id=";
        var url1 = "https://api.artsy.net/api/artists/";
        var url2 = "4d8b92684eb68a1b2c00009e";
        
        var searchURL = url1 + url2;
        url = url1 + e;
        urlart = url3 + e;
        //URL to retrieve art
        token = retrieveResult2(url,urlart);
        
    });
  
   

    
    function retrieveResult2(url,urlart) {
        //api request authentication
        var tokenURL = "https://api.artsy.net/oauth2/access_token?client_id=e63725515178be8b7bed&client_secret=6f46f16236a7eaabef6f3dc416a14083&grant_type=credentials&email=kumar.as@husky.neu.edu&password=ashabc";
        $.getJSON(tokenURL, function (result) {
            token = result.access_token;

            $.ajax({
                url: url,
                type: 'GET',
                dataType: 'json', 
                success: function (result) {

                    // profile of the artist
                    var div = document.createElement("div");
                    div.setAttribute('class', 'artistData');
                    var name_para = document.createElement("p");
                    var name = document.createTextNode("Name: " + result.name);
                    name_para.appendChild(name);
                    div.appendChild(name_para);
                  
                    var th_para = document.createElement("p");
                    var th_img = document.createElement("img");
                    th_img.setAttribute('src', result._links.thumbnail.href);
                    
                    th_para.appendChild(th_img);
                    div.appendChild(th_para);

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

                    var div1 = document.createElement("div");
                    div1.setAttribute('id', 'gallery');
                    var url = result._links.artworks.href;
                    <!--     retrieveArtwork(url, div1); -->
                         retart(urlart);
                    document.getElementById("ArtistProfile").appendChild(div);
                                
                },
            
           
                
                error: function () {
                    alert("An error has occurred!! Please try again later");
                },
                fail: function () {
                    alert("Some failure has occurred!! Please try again later");
                },
                beforeSend: function (jqXHR, settings) {
                    jqXHR.setRequestHeader("X-Access-Token", token);
                }
            });
        });
    }


    function retart(url) {

        // information about each art works
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
        .fail(function () {
            alert("Unable to retrieve artworks of the artist");
        })
        function displayArtwork(result) {
            var para1 = document.createElement("h3");
            var title1 = document.createTextNode("Popular Artworks ");

            para1.appendChild(title1);
            document.getElementById("gal1").appendChild(para1);
            console.log(result);
            if (result.total_count == 0) {
                var text = document.createTextNode("No results match the search criteria. Please try some different search data");
                document.getElementById("content").appendChild(text);
            }
            $.each(result._embedded.artworks, function (i, results) {
                var para = document.createElement("p");
                para.setAttribute('class', 'eachart');
                var title = document.createTextNode("Title: " + results.title);
                para.appendChild(title);

                var linebreak = document.createElement("br");
                para.appendChild(linebreak);
                var img = document.createElement("img");

                var href= results._links.thumbnail.href;
                var hreflen=href.length-10;
                var hr = href.substring(0,hreflen)+"larger.jpg"
                img.setAttribute('src',hr);
                para.appendChild(img);

                var linebreak = document.createElement("br");

                para.appendChild(linebreak);
                var para1 = document.createElement("p");
                para1.setAttribute('class', 'eachartinfo');
               
                var created_at = document.createTextNode("Created_at: " + results.created_at);
                para1.appendChild(created_at);
                
                var linebreak = document.createElement("br");
                para1.appendChild(linebreak);
                var medium = document.createTextNode("Medium: " + results.medium);
                para1.appendChild(medium);
                
                var linebreak = document.createElement("br");
                para1.appendChild(linebreak);
                var category = document.createTextNode("Category: " + results.category);
                para1.appendChild(category);
              
                var linebreak = document.createElement("br");
                para1.appendChild(linebreak);
                var collecting_institution = document.createTextNode("Collecting_institution: " + results.collecting_institution);
                para1.appendChild(collecting_institution);
                para.appendChild(para1);
                var linebreak = document.createElement("hr");
                para.appendChild(linebreak);

                document.getElementById("gal1").appendChild(para);
            });
        }


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
        .fail(function () {
            alert("Unable to retrieve artworks of the artist");
        })

        function displayArtwork(result) {
            var para1 = document.createElement("h3");
            var title1 = document.createTextNode("Famous Art Works: ");
            
            para1.appendChild(title1);
            document.getElementById("gallery").appendChild(para1);
            $.each(result._embedded.artworks, function (i, results) {
                var para = document.createElement("p");
                var title = document.createTextNode("Title: " + results.title);
                para.appendChild(title);

                var linebreak = document.createElement("br");
                para.appendChild(linebreak);
                var img = document.createElement("img");
                img.setAttribute('src', results._links.thumbnail.href);
                para.appendChild(img);
                document.getElementById("gallery").appendChild(para);
            });
        }
    }
});