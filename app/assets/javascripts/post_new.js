// softwareのフォーム追加・削除のイベント
// $(function(){

//   function buildHTML(){
//     const index = $('.program-input-text').length;
//     let html = `<div class="best-software">
//                   <div class="best-software-child">
//                   ソフト
//                   </div>
//                   <div id="best-software-child_box">
//                   <input placeholder="name" type="text" class="program-input-text" id="program_text" name="post[programs_attributes][${index}][software]">
//                   <i id="pulas-program" class="far fa-plus-square"></i>
//                   <i id="minus-program" class="far fa-minus-square"></i>
//                   <div id="add_program"></div>
//                   </div>
//                   <div class="best-main">
//                   <div class="best-main-text">
//                   ハード
//                   <div id="best-main-text_box">
//                   <input placeholder="category" type="text" class="hards-input-text" id="hard_text" name="post[programs_attributes][0][hards_attributes][0][category]">
//                   <i id="pulas-hard" class="far fa-plus-square"></i>
//                   <i id="minus-hard" class="far fa-minus-square minus_hard[0]"></i>
//                   <div id="add_hard"></div>
//                   </div>
//                   <div class="products">
//                   <div class="products-text">
//                   プロダクト
//                   </div>
//                   <div id="products-text_box">
//                   <input placeholder="products" type="text" class="products-input-text" id="product_text" name="post[programs_attributes][0][hards_attributes][0][products_attributes][0][thing]">
//                   <i id="pulas-product" class="far fa-plus-square"></i>
//                   <i id="minus-product" class="far fa-minus-square"></i>
//                   <div id="add_product"></div>
//                   </div>
//                   <div class="footer">
//                   <input type="submit" name="commit" value="send" class="products_button" data-disable-with="send">
//                   </div>
//                   </div>
//                   </div>
//                   </div>
//                 </div>`

//     return html;
//   }

//   $('#best-software-child_box').on('click', '#pulas-program',function(e){
//     e.preventDefault();

//     let html = buildHTML();
//     let type_text = document.getElementById("program_text").getAttribute("type");

//     $("#add_program").addClass("add_text");
//     $(".add_text").append(html);
//     $(".add_text").attr(type_text);

//     $('#best-software-child_box').on('click', '#minus-program', function() {
//       $(this).parent().remove();
//     });
//   });
// });


// hardのフォーム追加・削除のイベント
$(function(){

  function buildHTML(){
    const index = $('.hards-input-text').length;
    let html = `<div id="best-main-text_box">
                  <input placeholder="category" type="text" class="hards-input-text" id="hard_text" name="post[programs_attributes][0][hards_attributes][${index}][category]">
                  <i id="minus-hard" class="far fa-minus-square minus_hard[0]"></i>
                  <div id="add_hard"></div>
                  </div>
                  <div class="products">
                  <div class="products-text">
                  プロダクト
                  </div>
                  <div id="products-text_box">
                  <input placeholder="products" type="text" class="products-input-text" id="product_text" name="post[programs_attributes][0][hards_attributes][${index}][products_attributes][0][thing]">
                  <i id="pulas-product" class="far fa-plus-square"></i>
                  <i id="minus-product" class="far fa-minus-square"></i>
                  <div id="add_product"></div>
                  </div>
                  <div class="footer">
                  </div>
                </div>`

    return html;
  }

  $('#best-main-text_box').on('click', '#pulas-hard',function(e){
    e.preventDefault();

    let html = buildHTML();
    let type_text = document.getElementById("hard_text").getAttribute("type");

    $("#add_hard").addClass("add_text");
    $(".add_text").append(html);
    $(".add_text").attr(type_text);

    $('#best-main-text_box').on('click', '#minus-hard', function() {
      // $(this).children().remove();
      $(this).parent().remove();
    });
  });
});

