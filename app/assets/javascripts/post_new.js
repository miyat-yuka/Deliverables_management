// hardのフォーム追加・削除のイベント
$(function(){

  function buildHTML(){
    const index = $('.products-text_box').length;
    let html = `<div class="products-text_box">
                  <div class="products-text_box-category_text">
                  カテゴリー
                  <div class="products-text_box-category">
                  <select name="post[programs_attributes][0][products_attributes][${index}][category_id]"><option value="1">デスクトップ</option>
                  <option value="2">モニター</option>
                  <option value="3">マウス</option>
                  <option value="4">キーボード</option>
                  <option value="5">iPad</option>
                  <option value="6">ノートPC</option></select>
                  </div>
                  </div>
                  <div class="products-text_box-product_text">
                  ハードウェア
                  <div class="products-text_box-product">
                  <input placeholder="ハードウェア" type="text" class="products-input-text" id="product_text" name="post[programs_attributes][0][products_attributes][${index}][thing]">
                  </div>
                  </div>
                  <div class="products-text_box-product_text">
                  型番
                  <div class="products-text_box-model_number">
                  <input placeholder="型番" type="text" class="model_number-input-text" id="model_number_text" name="post[programs_attributes][0][products_attributes][${index}][model_number]">
                  </div>
                  </div>
                  <div class="products-text_box-product_text">
                  購入日
                  <div class="products-text_box-buy">
                  <input placeholder="購入日" type="text" class="purchase_date-input-text" id="purchase_date_text" name="post[programs_attributes][0][products_attributes][${index}][purchase_date]">
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

    $("#add_product").addClass("add_text");
    $(".add_text").append(html);

    $('.products-text_box').on('click', '#minus-product', function() {
      $(this).parent().remove();
    });
  });
});
