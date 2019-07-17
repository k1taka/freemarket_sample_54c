$(function(){

  //追加するhtml
  function appendOption (category){
    let html =`<option value="${category.id}" data-category="${category.id}">${category.name}</option>`;
    return html
  }
  //子カテゴリ追加
  function appendChildrenBox(insertHTML){
    let childHtml =`<div class="category__select--add select-wrap" id="children_wrapper">
                      <i class='fa fa-chevron-down icon chevron-select category__select--icon'></i>
                      <div class="category__select--list">
                        <select id="child_category" name="item[category_id]">
                          <option value="---" data-category="---">---</option>
                          ${insertHTML}
                        </select>
                      </div>
                    </div>
                    `
      $(".category__select-wrap").append(childHtml);
  }
　//孫カテゴリ追加
  function appendgrandChildrenBox(insertHTML){
    let grandchildHtml =`<div class="category__select--add select-wrap" id="grandchildren_wrapper">
                      <i class='fa fa-chevron-down icon chevron-select category__select--icon'></i>
                      <div class="category__select--list">
                        <select id="grandchild_category"　name="item[category_id]">
                          <option value="---" data-category="---">---</option>
                          ${insertHTML}
                        </select>
                      </div>
                    </div>
                    `
      $(".category__select-wrap").append(grandchildHtml);
  }


 //親カテゴリセレクト 追加子供カテゴリ
  $("#parent_category").on("change",function(){
    let parentCategory = document.getElementById("parent_category").value;
    console.log()
    if(parentCategory != "---"){//洗濯していることを確認
      $.ajax({
        url:"get_category_children",
        type:"GET",
        data:{parent_id:parentCategory},
        dataType:"JSON"
      })

      .done(function(children){
        $("#children_wrapper").remove();
        $("#grandchildren_wrapper").remove();
        $(".category-size").hide();
        let insertHTML ="";
        children.forEach(function(child){
          insertHTML += appendOption(child)
        });
        appendChildrenBox(insertHTML);
      })
      .fail(function(){
        window.alert("カテゴリを選べません")
      })
    }else{
      $("#children_wrapper").remove();
      $("#grandchildren_wrapper").remove();
      $(".category-size").hide();
    }
  })

//子供カテゴリ　追加　孫カテゴリ
  $(document).on("change",`#child_category`,function(){
    let childId = $("#child_category option:selected").data("category")
    if(childId != "---"){      
      $.ajax({
        url:"get_category_grandchildren",
        data:"GET",
        dataType:"JSON",
        data:{child_id:childId}
      })

      .done(function(grand_children){
        $("#grandchildren_wrapper").remove();
        $(".category-size").hide();
        let insertHTML2 = "";
        grand_children.forEach(function(grand_child){
          insertHTML2 += appendOption(grand_child)
        });
        appendgrandChildrenBox(insertHTML2);
        $(".category-brand").show();
      })

      .fail(function(){
        window.alert("カテゴリ取得に失敗しました")
      })

    }else{
      $("#grandchildren_wrapper").remove();
      $(".category-size").hide();
    }
  })
 
  
//-------------------------------------------------------------------------------------------
//サイズの表示をだす

$(document).on("change",`#grandchild_category`,function(){
  let childId = $("#child_category option:selected").data("category")
  const size =[15,16,17,18,20,21,29,30,33,34,35,38,43,44,45]
  sizeTrue = size.some(function(s){
    return s == childId
  })
 if(sizeTrue){
  $(".category-size").show();
 }
})


})