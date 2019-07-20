$(function(){
  
  // buildHTML 投稿画像反映
  function buildHTML(loadimageURI){
    let html =`
    <li class="image-item">
      <div class="image-item__photo">
        <img src="${loadimageURI}" >
      </div>
      <div class="image-item__button">削除</div>
    </li>`
    $("#preview").append(html)
  };
  
  // images 保存用配列
  
  //ドロップ発火
  $(".images").on("change","input[type=file]",function(e){
    e.preventDefault();
    
    let files = e.target.files
    // let files = $(this).prop("files");
    console.log(files)
    Array.prototype.forEach.call(files, function(file) {
    console.log(file) 
    //画像の読み込み filereaderはfileからURIを取得できる
    let file_reader = new FileReader();
    file_reader.onload = function(event){
      //image file からURI部分の取得
      let loadImageUrl = event.target.result;
      buildHTML(loadImageUrl)
    }
    file_reader.readAsDataURL(file)
  });//forEach
  
  })
  
  
  
  
  
  
  
  
  
  
  //画像一括送信  ajaxでコントローラに送る。
  $("#item-send").on("submit",function(){
  
    $.ajax({
      url: "/items",
      type: "POST",
      datatype: "JSON",
      data: ""
    })
    .done(function(){
      alert("出品に成功しました")
    })
    .fail(function(){
      alert("出品に失敗しました")
    })
  
  })
    
  })