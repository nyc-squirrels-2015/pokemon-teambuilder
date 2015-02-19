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
  $("#add_new_member").on("click", function(event){
    event.preventDefault();
    console.log($("img").length)
    if($("img").length === 1){
      var url = $(this).attr("href") + 2;
    }
    if($("img").length === 2){
      var url = $(this).attr("href") + 3;
    }
    if($("img").length === 3){
      var url = $(this).attr("href") + 4;
    }
    if($("img").length === 4){
      var url = $(this).attr("href") + 5;
    }
    if($("img").length === 5){
      var url = $(this).attr("href") + 6;
    }
    if($("img").length === 6){
      return
    }
    console.log(url)
    $.ajax({
      type: "get",
      url: url,
    }).done(function(response){
      $("#individual_team").append(response)
    })
  })

  $("html").on("click", "#create_new_team_btn", function(){
    $('html, body').animate({scrollTop:$(document).height()}, 'slow');
    $("#select_new_team").hide();
  })



//   $("#individual_team").on("submit", "#add_btn_form", function(event){
//     event.preventDefault();

//     information = $(this).serialize();
//     url = $(this).attr( "action" );
// console.log(url)
//     $.ajax({
//       type: "post",
//       url: url,
//       data: information
//     }).done(function(response){
//       $("#main_teams").append(response)
//     })
//   })

// $("#add_btn_form").submit(function(event){
//   event.preventDefault();
//   var test = $(this).serialize();
//   console.log(test)
// })


});
