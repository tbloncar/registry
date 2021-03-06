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
jQuery(function($) {
  init();
  // Populate hidden field on lifestyle page
  $('.wizard-lifestyle-container').click(function() {
    var typeId = $(this).data('id');
    $('input#lifestyle_type').val(typeId);
    $('.wizard-lifestyle-container').css('border-color', '#525789');
    $('.wizard-lifestyle-selected').fadeOut();
    $(this).find('.wizard-lifestyle-selected').fadeIn();
    $("form").submit();
  });
  // Add date field if shower value is yes
  $('#user_shower').change(function() {
    if($(this).find('option:selected').val() === "true") {
      $('.shower-date').show();
    }
    else {
      $('.shower-date').hide();
      $('.shower-date input').val('');
    }
  });
  function showShowerDate() {
    if($('#user_shower option:selected').val() === "true") {
      $('.shower-date').show();
    }
  }
  function enableDatepicker() {
    $('.datepicker').each(function() {
      $(this).datepicker();
    });
  }
  function init() {
    enableDatepicker();
    showShowerDate();
  }
});