$(function(){
  $(".first-next").on("click",function(){
    var counter_first = [
    document.forms.new_user.user_nickname.value, 
    document.forms.new_user.user_email.value, 
    document.forms.new_user.user_password.value, 
    document.forms.new_user.user_family_name.value, 
    document.forms.new_user.user_first_name.value, 
    document.forms.new_user.user_family_name_kana.value, 
    document.forms.new_user.user_first_name_kana.value, 
    document.forms.new_user.user_birth_year.value, 
    document.forms.new_user.user_birth_month.value, 
    document.forms.new_user.user_birth_day.value 
    ];
    var result_first = counter_first.every(function(value){
      return value != "";
    });

    if(result_first == false){
      window.alert('必須項目に未入力があります'); 
    }
    else if(result_first == true){
      $(".form-first").hide();
      $(".form-second").show();
      $(".nav-first").hide();
      $(".nav-second").show();
      window.scrollTo(0,50);
      $(".first-phase__status").css({color:"#CCCCCC"})
      $(".second-phase__location").addClass("red")
      $(".second-phase__status").css({color:"#EA352D"})
    }
  });
  $(".second-next").on("click",function(){
    $(".form-second").hide();
    $(".form-third").show();
    $(".nav-second").hide();
    $(".nav-third").show();
    window.scrollTo(0,50);
  });

  $(".third-next").on("click",function(){
    $(".form-third").hide();
    $(".form-forth").show();
    $(".nav-third").hide();
    $(".nav-forth").show();
    window.scrollTo(0,50);
    $(".second-phase__status").css({color:"#CCCCCC"})
    $(".third-phase__location").addClass("red")
    $(".third-phase__status").css({color:"#EA352D"})
  });

  $(".forth-next").on("click",function(){
    var counter_second = [
      document.forms.new_user.user_post_code.value, 
      document.forms.new_user.user_prefecture_id.value, 
      document.forms.new_user.user_address_city.value, 
      document.forms.new_user.user_address_location.value
    ];
    var result_second = counter_second.every(function(value){
      return value != "";
    });

    if(result_second == false){
      window.alert('必須項目に未入力があります'); 
    }
    else if(result_second == true){
      $(".form-forth").hide();
      $(".form-fifth").show();
      $(".nav-forth").hide();
      $(".nav-fifth").show();
      window.scrollTo(0,50);
      $(".third-phase__status").css({color:"#CCCCCC"})
      $(".forth-phase__location").addClass("red")
      $(".forth-phase__status").css({color:"#EA352D"})
    }
  });
  $(".fifth-next").on("click",function(){
    $(".form-fifth").hide();
    $(".form-last").show();
    $(".nav-fifth").hide();
    $(".nav-last").show();
    window.scrollTo(0,50);
    $(".forth-phase__status").css({color:"#CCCCCC"})
    $(".last-phase__location").addClass("red")
    $(".last-phase__status").css({color:"#EA352D"})
  });
});

