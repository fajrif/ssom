$("#searchdropdownsec").mCustomScrollbar({
  scrollButtons:{enable:true},
  theme:"minimal-dark",
  scrollbarPosition:"outside"
});

$('.cstmsearch input').keyup(function () {
    if ($.trim($('.cstmsearch input').val()).length) {
        $(this).parent().next().slideDown();
    } else {
        $(this).parent().next().slideUp();
    }
});

$('.notificationmenu a').click(function () {
  $(this).next().slideToggle();
});
$('.usermenu a').click(function () {
  $(this).next().slideToggle();
});

$('.cardright li a').click(function () {
  $(this).next().slideToggle();
});

$('#step1-btn').click(function () {
  $(this).parents(".modal").modal('hide');
  setTimeout(function(){
    $("#step2").modal('show');
  }, 500);
});
$('#step2-btn').click(function () {
  $(this).parents(".modal").modal('hide');
  setTimeout(function(){
    $("#step3").modal('show');
  }, 500);
});
$('.step3-btn').click(function () {
  $(this).parents(".modal").modal('hide');
  setTimeout(function(){
    $("#step4").modal('show');
  }, 500);
});
$('#step4-btn').click(function () {
  $(this).parents(".modal").modal('hide');
  setTimeout(function(){
    $("#step5").modal('show');
  }, 500);
});

$(document).on("click", function(event){
    var $trigger = $(".cardright li a");
    if($trigger !== event.target && !$trigger.has(event.target).length){
        $(".usercountdropdown").slideUp();
    }
});
$(document).on("click", function(event){
    var $trigger = $(".headersearch");
    if($trigger !== event.target && !$trigger.has(event.target).length){
        $(".searchdropdown").slideUp();
    }
});
$(document).on("click", function(event){
    var $trigger = $(".notificationmenu");
    if($trigger !== event.target && !$trigger.has(event.target).length){
        $(".notificationdropdown").slideUp();
    }
});
$(document).on("click", function(event){
    var $trigger = $(".usermenu");
    if($trigger !== event.target && !$trigger.has(event.target).length){
        $(".userdropdown").slideUp();
    }
});

$(window).scroll(function(){
    if ($(this).scrollTop() > 50) {
       $('.navsec').addClass('sticky');
    } else {
       $('.navsec').removeClass('sticky');
    }
});


// $(function () {
//   $('#timePicker').datetimepicker({
//     format: 'LT',
//   });
// });
// $(function () {
//   $('#datePicker').datetimepicker({
//     format: 'L',
//   });
// });

$('.homeSlider').slick({
  dots: true,
  centerMode: true,
  centerPadding: '60px',
  slidesToShow: 1,
  responsive: [
    {
      breakpoint: 480,
      settings: {
        centerMode: false,
        slidesToShow: 1
      }
    }
  ]
});

$('.exclusiveslider').slick({
  dots: false,
  centerPadding: '10px',
  slidesToShow: 2,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1
      }
    }
  ]
});

$('.streamslider').slick({
  dots: false,
  centerPadding: '20px',
  slidesToShow: 8,
  responsive: [
    {
      breakpoint: 991,
      settings: {
        slidesToShow:6
      }
    },
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 4
      }
    },
    {
      breakpoint: 575,
      settings: {
        slidesToShow: 2
      }
    },
    {
      breakpoint: 375,
      settings: {
        slidesToShow:1
      }
    },
  ]
});

$('.livenowslider').slick({
  dots: false,
  centerPadding: '20px',
  slidesToShow: 4,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2
      }
    },
    {
      breakpoint: 575,
      settings: {
        slidesToShow: 1
      }
    }
  ]
});

$('.livestreamer').slick({
  dots: false,
  centerPadding: '20px',
  slidesToShow: 4,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2
      }
    },
    {
      breakpoint: 575,
      settings: {
        slidesToShow: 1
      }
    }
  ]
});

$('.recommendslider').slick({
  dots: false,
  centerPadding: '20px',
  slidesToShow: 3,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2
      }
    },
    {
      breakpoint: 575,
      settings: {
        slidesToShow: 1
      }
    }
  ]
});




/*****************************/
$('.sortBy > a').click(function(){
  $(this).parent().find('.sortByDd').slideToggle();
});
$(document).on("click", function(event){
  var $trigger = $(".sortBy");
  if($trigger !== event.target && !$trigger.has(event.target).length){
    $(".sortByDd").slideUp();
  }
});

$('.gridListOption > ul > li > a').click(function(){
  $(this).addClass('active');
  $(this).parent().siblings().find('a').removeClass('active');
});
$('.gridOption').click(function(){
  $('.gridView').show();
  $('.listView').hide();
});
$('.listOption').click(function(){
  $('.gridView').hide();
  $('.listView').show();
});

$(document).ready(function() {
  var $videoSrc;
  $('.videoClick').click(function() {
      $videoSrc = $(this).data( "src" );
  });
  // when the modal is opened autoplay it
  $('#videoModal').on('shown.bs.modal', function (e) {
    // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
    $("#video").attr('src',$videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0" );
  })
  // stop playing the youtube video when I close the modal
  $('#videoModal').on('hide.bs.modal', function (e) {
    $("#video").attr('src',$videoSrc);
  })
});

// // Params
// var sliderSelector = '.swiper-container',
//     options = {
//       init: false,
//       loop: true,
//       speed:800,
//       slidesPerView: 4, // or 'auto'
//       // spaceBetween: 10,
//       centeredSlides : true,
//       effect: 'coverflow', // 'cube', 'fade', 'coverflow',
//       coverflowEffect: {
//         rotate: 0, // Slide rotate in degrees
//         stretch: 0, // Stretch space between slides (in px)
//         depth: 100, // Depth offset in px (slides translate in Z axis)
//         modifier: 1, // Effect multipler
//         slideShadows : false, // Enables slides shadows
//       },
//       grabCursor: true,
//       parallax: true,
//       pagination: {
//         el: '.swiper-pagination',
//         clickable: true,
//       },
//       navigation: {
//         nextEl: '.swiper-button-next',
//         prevEl: '.swiper-button-prev',
//       },
//       breakpoints: {
//         1280: {
//           slidesPerView: 3,
//         },
//         991: {
//           slidesPerView: 3,
//         },
//         768: {
//           slidesPerView: 1,
//           spaceBetween: 0
//         }
//       },
//       // Events
//       on: {
//         imagesReady: function(){
//           this.el.classList.remove('loading');
//         }
//       }
//     };
// var mySwiper = new Swiper(sliderSelector, options);
// 
// // Initialize slider
// mySwiper.init();

$('.owl-carousel').owlCarousel({
	items: 4,
	loop:true,
	nav:true,
	dots:true,
	merge:true,
	loop:true,
	margin:10,
	stagePadding: 50,
	video:true,
	lazyLoad:true,
	center:true,
	autoWidth:true,
	autoHeight:true
	// responsive:{
  //       0:{
  //           items:1
  //       },
  //       600:{
  //           items:3
  //       },
  //       1000:{
  //           items:5
  //       }
  //   }
});
