$(document).ready(function(){
  $(".evaluation--likes").on("click", function(){
    $(this).addClass("getGood")
    $(".heart").addClass("getGoodForHeart")
    let current_user =$(".user-for-ajax").text();
    let item_id = location.pathname
    console.log(current_user);
    console.log(item_id);
    // let item_parameter = location.search
    // $.ajax({
    //   type: "PATCH",
    //   url: "/edit_good",
    //   data: {
    //         user_id: current_user.id,
    //         item_id: 
    //         }
    // })
  })
})