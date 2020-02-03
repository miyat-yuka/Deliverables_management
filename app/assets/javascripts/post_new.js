$(function(){

  function buildHTML(){
    const index = $('.hards-input-text').length;
    const index2 = $('.fa-minus-square').length;
    let html = `<div id="best-main-text_box">
                  <input placeholder="category" type="text" class="hards-input-text" id="hard_text" name="post[programs_attributes][0][hards_attributes][${index}][category]">
                  <i id="minus-hard" class="far fa-minus-square minus_hard[0]"></i>
                  <div id="add"></div>
                </div>`

    return html;
  }

  $('#best-main-text_box').on('click', '#pulas-hard',function(e){
    e.preventDefault();

    let html = buildHTML();
    let type_text = document.getElementById("hard_text").getAttribute("type");

    $("#add").addClass("add_text");
    $(".add_text").append(html);
    $(".add_text").attr(type_text);

    $('#best-main-text_box').on('click', '#minus-hard', function() {
      // console.log("hello")
      // var val = $(this).attr('id'); 
      // $("#add").addClass("remove_text");
      // $(".remove_text").remove();
      $(this).parent().remove();
    });
  });
});