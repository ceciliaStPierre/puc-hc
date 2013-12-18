// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
//= require bootstrap-select

$(document).on('page:load', EnableSelectPicker);
$(document).on('page:load', ShowFirstPlan);
$(document).on('page:load', ChangeDisplayPlan);

$(function(){
  EnableSelectPicker();
  ShowFirstPlan();
  ChangeDisplayPlan();
});



function EnableSelectPicker(){
  $(".selectpicker").selectpicker();
}

function ShowFirstPlan()
{
	$(".board-wrapper > div").hide();
	$("#board-0").show();
}
function ChangeDisplayPlan()
{
	$('.board-select').on('change', function() {
  	$(".board-wrapper > div").hide();
	$("#board-"+this.value).show();
	$('.board-select').val(this.value);
});
}
