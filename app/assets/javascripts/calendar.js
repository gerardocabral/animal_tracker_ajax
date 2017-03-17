$(document).ready(function() {
   $("#calendar").fullCalendar({
     events: "/sightings/get_sightings",
     timeFormat: "LT",
     eventClick: function(sightings) {
      if (sighting.url) {
          window.open(sighting.url);
          return false;
      }
    }
  });
});
