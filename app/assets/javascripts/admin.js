// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap-transition
//= require bootstrap-alert
//= require bootstrap-modal
//= require bootstrap-dropdown
//= require bootstrap-scrollspy
//= require bootstrap-tab
//= require bootstrap-tooltip
//= require bootstrap-popover
//= require bootstrap-button
//= require bootstrap-collapse
//= require bootstrap-carousel
//= require bootstrap-typeahead
//= require bootstrap-datetimepicker/bootstrap-datetimepicker.min
//= require bootstrap-select

$(function() {
  $('.datetimepicker').datetimepicker();
  if (history && history.pushState) {
    // handle index sort and pagination using ajax
    $("#index_table th a, #index_table .pagination a").on("click", function(e) {
      $.getScript(this.href);
      history.pushState({module:"leave"}, document.title, this.href);
      e.preventDefault();
    });

    $(".filter_checkbox").click(function(e) {
      $.get($("#index_search").attr("action"), $("#index_search").serialize(), {module:"leave"}, "script");
      history.replaceState({module:"leave"}, document.title, $("#index_search").attr("action") + "?" + $("#index_search").serialize());
      e.preventDefault();
    });

    $(".filter_select").change(function(e) {
      $.get($("#index_search").attr("action"), $("#index_search").serialize(), {module:"leave"}, "script");
      history.replaceState({module:"leave"}, document.title, $("#index_search").attr("action") + "?" + $("#index_search").serialize());
      e.preventDefault();
    });

    // handle index input search keyup using ajax
    $("#index_search input").keyup(function(e) {
      $.get($("#index_search").attr("action"), $("#index_search").serialize(), {module:"leave"}, "script");
      history.replaceState({module:"leave"}, document.title, $("#index_search").attr("action") + "?" + $("#index_search").serialize());
      e.preventDefault();
    });

    // bind window for popstate
    $(window).bind("popstate", function(evt) {
      var state = evt.originalEvent.state;
      if (state && state.module === "leave"){
        $.getScript(location.href);
      }
    });
  }
});
