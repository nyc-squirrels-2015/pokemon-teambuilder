$(document).ready(function() {

  $("#new_team_btn").on("click", function(event){
    event.preventDefault();
    var url = $(this).attr("href");
    if($("#menu select").length === 0){
      $.ajax({
        type: "get",
        url: url,
      }).done(function(response){
        $("#menu").append(response)
      })
    }
  });

$("#new_team_btn").on("click", function(event){
  event.preventDefault();
      $("#select_new_team").toggle();
  })


$("#menu").on("submit", "#create_new_team", function(event){
  event.preventDefault();
  information = $(this).serialize();
  url = $(this).attr( "action" );

 $.ajax({
  type: "post",
  url: url,
  data: information
 }).done(function(response){
  $("#main_teams").append(response)
 })
})





// add new member selector on edit team
  // $("#add_new_member").on("click", function(event){
  //   event.preventDefault();
  //   if($("select").length === 1){
  //     var url = $(this).attr("href") + 2;
  //   }
  //   if($("select").length === 2){
  //     var url = $(this).attr("href") + 3;
  //   }
  //   if($("select").length === 3){
  //     var url = $(this).attr("href") + 4;
  //   }
  //   if($("select").length === 4){
  //     var url = $(this).attr("href") + 5;
  //   }
  //   if($("select").length === 5){
  //     var url = $(this).attr("href") + 6;
  //   }
  //   if($("select").length === 6){
  //     return
  //   }
  //   $.ajax({
  //     type: "get",
  //     url: url,
  //   }).done(function(response){
  //     $("#edit_team_selector").append(response)
  //   })
  // })

// $("#add_btn_form").submit(function(event){
//   event.preventDefault();
//   var test = $(this).serialize();
//   console.log(test)
// })


});
