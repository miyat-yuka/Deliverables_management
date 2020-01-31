$(function(){

  function buildHTML(){
    let html = `<input placeholder="category" type="text" class="hards-input-text" id="hard_text" name="post[programs_attributes][0][hards_attributes][0][category]">`

    return html;
  }

  $("#pulas-hard").click(function(e){
    e.preventDefault();

    let html = buildHTML();
    let type_text = document.getElementById("hard_text").getAttribute("type");

    $("#add").addClass("add_text");
    $(".add_text").append(html);
    $(".add_text").attr(type_text);

  });
});




$(document).on("click", "#pulas-hard", function() {

  $("#hard_text").clone(true).insertAfter("#hard_text");
});




// $(document).on("click", ".del", function() {
//   var target = $(this).parent();
//   if (target.parent().children().length > 1) {
//       target.remove();
  // }
// });