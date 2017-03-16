$("document").ready(function() {

  $("#add_new_animal_button").on(
    "click",
    function() {
      // Data to be submitted
      newAnimal = {
        "animal": {
          "common": $("#animal_common").val(),
          "latin": $("#animal_latin").val(),
          "kingdom": $("#animal_kingdom").val(),
          "animal_id": $("#animal_id").val()
        }
      }

      $.ajax({
        dataType: 'json',
        url: '/animals',
        method: 'POST',
        data: newAnimal,
        success: function(dataFromServer) {
          add_to_animal_list(dataFromServer);
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert("Add new animal failed: " + errorThrown);
        }
      });
      event.preventDefault();
  });// end add wine

}); // end document ready

// Function to be called after data has been successfully submitted
function add_to_animal_list(data) {
  $("#animal_list").append( "<tr>" +
    ("<td>" + data.common + "</td>") + ("<td>" + data.latin + "</td>") + ("<td>" + data.kingdom + "</td>") + ('<td><a href="' + '/animals/' + data.id + '">' + "Show" + "</a></td>") + ('<td><a href="' + '/animals/' + data.id + '/edit/' + '">' + "Edit" + "</a></td>") + ('<td><a href="animals#destroy">' + "Destroy" + "</a></td>") + "</tr>" );
}
