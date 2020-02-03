// $(function(){

//   const buildHTML = (index)=> {
//     const html = `<div class="js-file_group" data-index="${index}">
//                     <input placeholder="category" type="text" class="hards-input-text" name="post[programs_attributes][${index}][hards_attributes][${index}][category]" id="post_programs_attributes_${index}_hards_attributes_${index}_category">
//                     <i id="pulas-hard" class="far fa-plus-square"></i>
//                     <br>
//                     <span class="js-remove">削除</span>
//                     <div id="add"></div>
//                   </div>`

//     return html;
//   }

//   let fileIndex = [1,2,3,4,5,6,7,8,9,10];

//   $('#best-main-text_box').on('change', '.hards-input-text', function(e) {
//     // fileIndexの先頭の数字を使ってinputを作る
//     $('#add').append(buildHTML(fileIndex[0]));
//     fileIndex.shift();
//     // 末尾の数に1足した数を追加する
//     fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
//   });

//   $('#best-main-text_box').on('click', '.js-remove', function() {
//     $(this).parent().remove();
//     // 画像入力欄が0個にならないようにしておく
//     if ($('.hards-input-text').length == 0) $('#best-main-text_box').append(buildHTML(fileIndex[0]));
//   });

// });




$(function(){

  function buildHTML(){
    const index = $('.hards-input-text').length;
    const index2 = $('.fa-minus-square').length;
    let html = `<div id="best-main-text_box">
                  <input placeholder="category" type="text" class="hards-input-text" id="hard_text" name="post[programs_attributes][0][hards_attributes][${index}][category]">
                  <i id="minus-hard" class="far fa-minus-square"></i>
                  <div id="add"></div>
                </div>`

    return html;
  }

  $(".fa-plus-square").click(function(e){
    e.preventDefault();

    let html = buildHTML();
    let type_text = document.getElementById("hard_text").getAttribute("type");

    $("#add").addClass("add_text");
    $(".add_text").append(html);
    $(".add_text").attr(type_text);
  });

  $(function(e){
    const index = $('.hards-input-text').length;
    const index2 = $('.fa-minus-square').length;

    $(".fa-minus-square").click(function(e){
      
      // $(".add_text").removeClass("add_text");
      // if(index > 0 && index2 == index){
        $("#add").addClass("remove_text");
      $(".remove_text").remove();
      // $(this).parent().remove();
      // };
  });
});

  // $('.add_text').on('click', '#minus-hard', function() {
  //   $(this).parent().remove();
  // });
});