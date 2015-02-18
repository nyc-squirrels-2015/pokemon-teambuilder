$(document).ready(function() {

// new team call
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
// end of new team call


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
// end of selector for edit

// create mon on edit page

// $("#add_btn_form").submit(function(event){
//   event.preventDefault();
//   var test = $(this).serialize();
//   console.log(test)

// })


// end of create on edit

// this is the closing of document ready
});
