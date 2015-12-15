var x = document.getElementById("demo");
var lat = 70
var lng = 40
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {

    latlon = position.coords.latitude + "," + position.coords.longitude;

    x.innerHTML = "Latitude: " + position.coords.latitude +
    "<br>Longitude: " + position.coords.longitude;


}

var map;
var myCenter = new google.maps.LatLng(41.3, -71);

function initialize() {
    var mProp = {
        center: myCenter,
        zoom: 11,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("myMap"), mProp);

    google.maps.event.addListener(map, 'click', function (event) {
        placeMarker(event.latLng);
    });
}

function placeMarker(location) {
    var marker = new google.maps.Marker({
        position: location,
        map: map,
    });
    var infowindow = new google.maps.InfoWindow({
        content: 'Latitude: ' + location.lat() + '<br>Longitude: ' + location.lng()
    });
    infowindow.open(map, marker);
}

function initialize1() {
    var mapProp = {
        center: latlon,
        zoom: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

    var marker = new google.maps.Marker({
        position: myCenter,
        animation: google.maps.Animation.BOUNCE
    });

    marker.setMap(map);
    var infowindow = new google.maps.InfoWindow({
        content: "You are here"
    });

    infowindow.open(map, marker);
}

google.maps.event.addDomListener(window, 'load', initialize);