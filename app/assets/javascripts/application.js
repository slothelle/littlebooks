// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function(){
  $("p").html(function(index, value) {
    return value.replace(/\b(Goldenhair)\b/g, '<span class="main_character">$1</span>');
  });

  $('#mytale_title').keyup(function(){
    var input = $(this).val();
    $('h2').text(input);
  });
  $('#mytale_main_character').keyup(function(){
    var input = $(this).val();
    console.log(input);
    $('.main_character').text(input);
  });
});
