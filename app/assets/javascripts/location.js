// default location: General Assembly Melbourne
var deviceLat = '-37.818624299999996';
var deviceLong = '144.9593399';

// Get user's location if available
function getLocation(yesFn, noFn) {
  if (navigator.geolocation) {
    console.log("got location");
    navigator.geolocation.getCurrentPosition(yesFn);
  } else { 
    console.log("couldn't get location");
    noFn();
  }
}

