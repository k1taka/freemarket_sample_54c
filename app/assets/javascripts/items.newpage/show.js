$(function () {
  $('.item_delete').click(function(){
      $('.modalArea').fadeIn();
  });
  $('.modalBg','.cancel_btn').click(function(){
    $('.modalArea').fadeOut();
  });
});