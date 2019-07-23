$(function() {
  
  // 「item-photo__bottoms」内の「img」をマウスオーバーした場合
  $('.item-photo__bottoms img').hover(function() {
    // マウスオーバーしている画像をメイン画像である「item-photo__top」の「image」に反映
    $('.item-photo__top img').attr('src', $(this).attr('src'));
  });
});