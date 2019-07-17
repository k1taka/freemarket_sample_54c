$(function(){
// プライス（利益表示更新）
$(".price__select--list").on("keyup",function(){
  let price = $(this).val();
  let charge = Math.round(price*0.1)
  let profit = (price - charge).toLocaleString();
  if(price.length > 3){
   $(".price-charge__result").text(`¥${charge}`)
   $(".price-benefit__result").text(`¥${profit}`)
  }else{
    $(".price-charge__result").text(`-`)
   $(".price-benefit__result").text(`-`)
  }
})

})