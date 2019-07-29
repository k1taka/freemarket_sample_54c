$(document).ready(function(){
  $(".evaluation--likes").on("click", function(){
    $(this).addClass("getGood")
    $(".heart").addClass("getGoodForHeart")
    let item_parameter = location.search
    $.ajax({
      type: "PATCH",
      url: "/edit_good",
      data: {
            user_id: current_user.id,
            item_id: 
            }
    })
  })
})