// main.js
// handles ajax connections to server

$(document).ready(function() {
   var httpRequest;

   $("#end_button").click(ChangePlayer);
   $(".ship_model").click(AddUnit);

});

function ChangePlayer() {
   $.ajax({
      url: "end_turn",
      type: 'GET',
      success: function(response) {
         $('#player_action').html("<div><p>" + response + "</p></div>");
      },
      error: function() {
         alert("Ajax Error");
      }
   });
}

function AddUnit() {
   $.ajax({
      url: "unit_list",
      data: {
         model  : $(this).innerText,
         userid : @Session["userid"]
      },
      type: 'POST',
      success: function(response) {
         $('#fleet').append("<div><p>" + response + "</p></div>");
      },
      error: function() {
         alert("Ajax Error");
      }
   });
}
