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
$('#mytale_main_character_gender').change(function(){
    if ($('#mytale_main_character_gender option:selected').text() === "Male"){
      $("p").html(function(index, value) {
        return value.replace(/\b(She)\b/g, '<span class="male">He</span>');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(she)\b/g, '<span class="male">he</span>');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(miss)\b/g, '<span class="male">lad</span>');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(herself)\b/g, '<span class="male">himself</span>');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(her)\b/g, '<span class="male">his</span>');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(Her)\b/g, '<span class="male">His</span>');
      });
    } else if ($('#mytale_main_character_gender option:selected').text() === "Female"){
        $("p").html(function(index, value) {
        return value.replace(/\b(He)\b/g, 'She');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(he)\b/g, 'she');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(lad)\b/g, 'miss');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(himself)\b/g, 'herself');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(his)\b/g, 'hers');
      });

      $("p").html(function(index, value) {
        return value.replace(/\b(His)\b/g, 'Hers');
      });
    }
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
