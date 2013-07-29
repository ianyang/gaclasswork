google.maps.visualRefresh = true;
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;
var service;
var infowindow;
var marker;

// setting home and destination variables
var home = new google.maps.LatLng(37.7750, -122.4183);
var generalAssembly = new google.maps.LatLng(37.779931, -122.394868);

// initializing map and directions
function initialize() {

  directionsDisplay = new google.maps.DirectionsRenderer();

  var mapOptions = {
    center: generalAssembly,
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  directionsDisplay.setMap(map);
  directionsDisplay.setPanel(document.getElementById("directionsPanel"));

}

// route calculations function
function calcRoute(start, finish) {
  var request = {
    origin: start,
    destination: finish,
    travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}

// function to call nearby places
function nearby() {
  var request = {
    location: generalAssembly,
    radius: '500',
    query: 'sushi'
  };
  infowindow = new google.maps.InfoWindow();
  service = new google.maps.places.PlacesService(map);
  service.textSearch(request, callback);
}

// places callback
function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      var place = results[i];
      createMarker(results[i]);
    }
  }
}

// functions for marker position
function createMarker(place) {
  var placeLoc = place.geometry.location;
  marker = new google.maps.Marker({
    map: map,
    position: placeLoc,
    animation: google.maps.Animation.DROP
  });

  infowindow = new google.maps.InfoWindow(
    { content: place.name,
    });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map, this);
    calcRoute(generalAssembly, placeLoc);
  });
}

// geocoder
function codeAddress(variable, address) {
  geocoder = new google.maps.Geocoder();
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      console.log(results[0].geometry.location);
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
