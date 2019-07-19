$(function(){
  $(".first-next").on("click",function(){
    $(".form-first").hide();
    $(".form-second").show();
    $(".nav-first").hide();
    $(".nav-second").show();
    window.scrollTo(0,50);
    $(".first-phase__status").css({color:"#CCCCCC"})
    $(".second-phase__location").addClass("red")
    $(".second-phase__status").css({color:"#EA352D"})
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
    $(".form-forth").hide();
    $(".form-fifth").show();
    $(".nav-forth").hide();
    $(".nav-fifth").show();
    window.scrollTo(0,50);
    $(".third-phase__status").css({color:"#CCCCCC"})
    $(".forth-phase__location").addClass("red")
    $(".forth-phase__status").css({color:"#EA352D"})
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