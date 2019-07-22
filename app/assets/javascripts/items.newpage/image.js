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
    return html
  };
  
  // images 保存用配列
  let file_array = [];
  
  //ドロップ発火
  $(".images").on("change","input[type=file]",function(e){
    e.preventDefault();
    //imageの取得
      let files = e.target.files

    Array.prototype.forEach.call(files, function(file) {
      if(file_array.length <= 10){
        file_array.push(file);
        //画像の読み込み filereaderはfileからURIを取得できる
        let file_reader = new FileReader();

        file_reader.onload = function(event){
          //image file からURI部分の取得
          let loadImageUrl = event.target.result;
          item = buildHTML(loadImageUrl)

          const ulElement = document.getElementById( "target" ) ;
          const childElementCount = ulElement.childElementCount ;
          if(childElementCount <= 4){
            $(".image-save-items").append(item)
          }else{
            $(".image-save-items2").append(item)
          }
        }//onload
      file_reader.readAsDataURL(file)
      }//if
    });//forEach
  })

  $(document).on("click",".image-item__button",function(){
  let index = $(".image-item__button").index(this);
  file_array.splice(index -1,1)
  $(this).parent().remove();
  })

  //画像一括送信  ajaxでコントローラに送る。
  $("#new_item").on("submit",function(e){
    e.preventDefault();
    let formData = new FormData($(this).get(0));
    console.log(formData)
    file_array.forEach(function(file){
      formData.append("image[images][]", file)
    })
    $.ajax({
      url: "/items",
      type: "POST",
      datatype: "json",
      data: formData,
      contentType: false,
      processData: false
    })
    .done(function(data){
      alert(data)
    })
    .fail(function(){
      alert("出品に失敗しました")
    })
  })
})