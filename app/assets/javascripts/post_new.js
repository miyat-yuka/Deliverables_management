// hardのフォーム追加・削除のイベント
$(function(){

  function buildHTML(){
    const index = $('.products-text_box').length;
    let html = `<div class="products-text_box">
                  <div class="products-text_box-category_text">
                  カテゴリー
                  <div class="products-text_box-category">
                  <select name="post[programs_attributes][0][products_attributes][${index}][category_id]" ><option value="1">デスクトップ</option>
                  <option value="2">モニター</option>
                  <option value="3">キーボード</option>
                  <option value="4">マウス</option>
                  <option value="5">ノートPC</option>
                  <option value="6">タブレット</option>
                  <option value="7">iPad</option></select>
                  </div>
                  </div>
                  <div class="products-text_box-product_text">
                  ハードウェア
                  <div class="products-text_box-product">
                  <input placeholder="products" type="text" class="products-input-text" id="product_text" name="post[programs_attributes][0][products_attributes][${index}][thing]">
                  </div>
                  </div>
                  <div class="products-text_box-product_text">
                  型番
                  <div class="products-text_box-model_number">
                  <input placeholder="model_number" type="text" class="model_number-input-text" id="model_number_text" name="post[programs_attributes][0][products_attributes][${index}][model_number]">
                  </div>
                  </div>
                  <i id="minus-product" class="far fa-minus-square"></i>
                  <div id="add_product"></div>
                </div>`

    return html;
  }

  $('.products-text_box').on('click', '#pulas-product',function(e){
    e.preventDefault();

    let html = buildHTML();
    // let type_text = document.getElementById("product_text").getAttribute("type");

    $("#add_product").addClass("add_text");
    $(".add_text").append(html);
    // $(".add_text").attr(type_text);

    $('.products-text_box').on('click', '#minus-product', function() {
      $(this).parent().remove();
    });
  });
});



// $(function(){

//   function buildHTML(){
//     const index = $('.products-text_box').length;
//     let html = `<div class="products-text_box">
//                   <select name="post[programs_attributes][0][products_attributes][${index}][category_id]"><option value="1">デスクトップ</option>
//                   <option value="2">モニター</option>
//                   <option value="3">キーボード</option>
//                   <option value="4">マウス</option>
//                   <option value="5">ノートPC</option>
//                   <option value="6">タブレット</option>
//                   <option value="7">iPad</option></select>
//                   <input placeholder="products" type="text" class="products-input-text" id="product_text" name="post[programs_attributes][0][products_attributes][${index}][thing]">
//                   <input placeholder="model_number" type="text" class="model_number-input-text" id="model_number_text" name="post[programs_attributes][0][products_attributes][${index}][model_number]">
//                   <i id="pulas-product" class="far fa-plus-square"></i>
//                   <i id="minus-product" class="far fa-minus-square"></i>
//                   <div id="add_product"></div>
//                 </div>`

//     return html;
//   }

//   $('.products-text_box').on('click', '#pulas-product',function(e){
//     e.preventDefault();

//     let html = buildHTML();
//     let type_text = document.getElementById("product_text").getAttribute("type");

//     $("#add_product").addClass("add_text");
//     $(".add_text").append(html);
//     $(".add_text").attr(type_text);

//     $('.products-text_box').on('click', '#minus-product', function() {
//       $(this).parent().remove();
//     });
//   });
// });



// $(function(){

//   function buildHTML(){
//     const index = $('.hards-input-text').length;
//     let html = `<div id="best-main-text_box">
//                   <input placeholder="category" type="text" class="hards-input-text" id="hard_text" name="post[programs_attributes][0][hards_attributes][${index}][category]">
//                   <i id="minus-hard" class="far fa-minus-square minus_hard[0]"></i>
//                   <div id="add_hard"></div>
//                   </div>
//                   <div class="products">
//                   <div class="products-text">
//                   プロダクト
//                   </div>
//                   <div id="products-text_box">
//                   <input placeholder="products" type="text" class="products-input-text" id="product_text" name="post[programs_attributes][0][hards_attributes][${index}][products_attributes][0][thing]">
//                   <i id="pulas-product" class="far fa-plus-square"></i>
//                   <i id="minus-product" class="far fa-minus-square"></i>
//                   <div id="add_product"></div>
//                   </div>
//                   <div class="footer">
//                   </div>
//                 </div>`

//     return html;
//   }

//   $('#best-main-text_box').on('click', '#pulas-hard',function(e){
//     e.preventDefault();

//     let html = buildHTML();
//     let type_text = document.getElementById("hard_text").getAttribute("type");

//     $("#add_hard").addClass("add_text");
//     $(".add_text").append(html);
//     $(".add_text").attr(type_text);

//     $('#best-main-text_box').on('click', '#minus-hard', function() {
//       // $(this).children().remove();
//       $(this).parent().remove();
//     });
//   });
// });

