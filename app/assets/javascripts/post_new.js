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
    let html = `<input placeholder="category" type="text" class="hards-input-text" id="hard-text" name="post[programs_attributes][0][hards_attributes][0][category]">`

    return html;
  }

  $("#pulas-hard").click(function(e){
    e.preventDefault();

    let html = buildHTML();
    let type_text = document.getElementById("hard-text").getAttribute("type");
    // let type_text = $(".add_text").append('<input type="text">');

    $("#add").addClass("add_text");
    // $(".add_text").append('<input type="text">');
    $(".add_text").append(html);
    $(".add_text").attr(type_text);

  });
});









// $(document).on("click", "#pulas-hard", function() {

//   $("#hard_text").clone(true).insertAfter("#hard_text");
// });




// $(document).on("click", ".del", function() {
//   var target = $(this).parent();
//   if (target.parent().children().length > 1) {
//       target.remove();
  // }
// });