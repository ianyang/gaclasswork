var map;
var marker;
var markers = [];
var iterator = 0;

var places = [
          new google.maps.LatLng(42.3314, -83.0458),
          new google.maps.LatLng(44.9800, -93.2636),
          new google.maps.LatLng(37.7750, -122.4183),
          new google.maps.LatLng(43.0731, -89.4011)
        ];

function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(-34.397, 150.644),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);

  marker = new google.maps.Marker({
    position: map.getCenter(),
    map: map,
    title: 'Click to zoom'
  });
google.maps.event.addListener(marker, 'click', toggleBounce);
}

function toggleBounce() {

  if (marker.getAnimation() != null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }
}

// function addMarker(lat, lon) {
// var point = new google.maps.LatLng(lat, lon);
// marker = new google.maps.Marker({ 
// position: point,
// map: map,
// title: 'new point'
// })
// google.maps.event.addListener(map, 'center_changed', function() {
//    window.setTimeout(function() {
//      map.panTo(marker.getPosition());
//    }, 3000);
//  });
// }


function addMarker() {
  markers.push(new google.maps.Marker({
    position: places[iterator],
    map: map,
    draggable: false,
    animation: google.maps.Animation.DROP
  }));
  function() {
    map.panTo(places[iterator]);
  }
  iterator++;
}

// function addMarkers(points) {
// for(var i = 0; i < points.length; i++) {
// marker = new google.maps.Marker({
// position: points[i],
// map: map,
// title: 'place'
// });
// addListener(marker);
// };
// }

// function addListener(new_marker) {
// google.maps.event.addListener(new_marker, 'click', toggleBounce );
// }


google.maps.event.addDomListener(window, 'load', initialize);