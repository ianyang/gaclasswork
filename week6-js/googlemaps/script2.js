var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;
var service;
var infowindow;

function initialize() {
  var sf = new google.maps.LatLng(37.7750, -122.4183);
  map = new google.maps.Map(document.getElementById('map-canvas'), {
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      center: sf,
      zoom: 15
    });

  var request = {
    location: sf,
    radius: '500',
    types: ['gym']
  };

  service = new google.maps.places.PlacesService(map);
  service.nearbySearch(request, callback);
}

function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      var place = results[i];
      createMarker(results[i]);
    }
  }
}

function createMarker(place) {
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });
}



google.maps.event.addDomListener(window, 'load', initialize);