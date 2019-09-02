$(document).ready(function(){


  //いいね見た目変化
  $(".evaluation--likes").on("click", function(){
    const for_limit = /[0-9]+/
    let item = location.pathname.match(for_limit)[0];
    let good =$(".good-first").text().match(for_limit)[0];
    let good_plus =$(".good-for-ajax").text().match(for_limit)[0];
    let good_standard =$(".for-ajax").text().match(for_limit)[0];
    let user = $(".user-for-ajax").text().match(for_limit)[0];
    let data ={user_id: user}
    ajax = $.ajax({type: "POST",url: "/items/"+ item +"/edit_good",data: data,dataType:"JSON"})
    
    
    if(good_standard == good){
      $('.evaluation--likes').addClass("getGood");
      $(".heart").addClass("getGoodForHeart");
      $('.for-ajax').html(good_plus); 
      //いいね非同期追加
      ajax
      .done(function(){})
      .fail(function(){});
      
    }else{
      $(".evaluation--likes").removeClass("getGood");
      $(".heart").removeClass("getGoodForHeart");
      $('.for-ajax').html(good);
      //いいね非同期追加
      ajax
      .done(function(){})
      .fail(function(){});
    }
  });
});



