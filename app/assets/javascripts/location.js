// default location: General Assembly Melbourne
var deviceLat = '-37.818624299999996';
var deviceLong = '144.9593399';

// Get user's location if available
function getLocation() {
  if (navigator.geolocation) {
    console.log("got location");
    navigator.geolocation.getCurrentPosition(setPosition);
  } else { 
    console.log("didn't got location");
    setLocations(false);
  }
}

function setPosition(position) {
  deviceLat = position.coords.latitude;
  deviceLong = position.coords.longitude;
  setLocations(true);
}

function setLocations(cond){
  if (window.location.pathname === "/locations/new"){
    document.querySelector("#lat").value = deviceLat;
    document.querySelector("#long").value = deviceLong;
  } 
}