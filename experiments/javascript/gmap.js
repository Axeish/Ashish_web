
var myCenter = new google.maps.LatLng(42.342, -71.12085);
function initialize() {
    var mapOptions = {
        center: { lat: 42.347, lng: -71.124 },
        zoom: 10
    };
    var mapOptions2 = {
        center: { lat: 42.347, lng: -71.124 },
        zoom: 10
    };
    var map = new google.maps.Map(document.getElementById('map-api'),
        mapOptions);

    var marker = new google.maps.Marker({
        position: myCenter,

    });

    marker.setMap(map);

    var map = new google.maps.Map(document.getElementById('map-api2'),
        mapOptions2);


    var marker = new google.maps.Marker({
        position: myCenter,
        animation: google.maps.Animation.BOUNCE
    });
    var infowindow = new google.maps.InfoWindow({
        content: "My Home Address"
    });

    infowindow.open(map, marker);

    marker.setMap(map);

    var map = new google.maps.Map(document.getElementById('map-api3'),
          mapOptions2);
    var marker = new google.maps.Marker({
        position: myCenter,
        title: 'Click to zoom'
    });
    google.maps.event.addListener(marker, 'click', function () {
        map.setZoom(9);
        map.setCenter(marker.getPosition());
    });
    marker.setMap(map);


    google.maps.event.addListener(map, 'center_changed', function () {
        // 3 seconds after the center of the map has changed, pan back to the marker
        window.setTimeout(function () {
            map.panTo(marker.getPosition());
        }, 2000);
    });


}
google.maps.event.addDomListener(window, 'load', initialize);