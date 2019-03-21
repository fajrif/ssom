$('.triggar').click(function(){
  $('body').addClass('swipe');
});
$('.close-tgl').click(function(){
  $('body').removeClass('swipe');
});
$(document).on("click", function(event){
    var $trigger = $("body");
    if($trigger !== event.target && !$trigger.has(event.target).length){
        $("body").removeClass("swipe");
    }
});
$(window).scroll(function(){
    if ($(this).scrollTop() > 10) {
       $('.headerSection').addClass('stickyHeader');
    } else {
       $('.headerSection').removeClass('stickyHeader');
    }
});
$('.sliderSection').slick({
  slidesToShow: 6,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  dots: true,
  responsive: [
  {
    breakpoint: 991,
    settings: {
      slidesToShow: 4,
      slidesToScroll: 3,
      infinite: true,
      dots: true
    }
  },
  {
    breakpoint: 767,
    settings: {
      slidesToShow: 3,
      slidesToScroll: 2
    }
  },
  {
    breakpoint: 480,
    settings: {
      slidesToShow: 2,
      slidesToScroll: 1
    }
  }
  // You can unslick at a given breakpoint now by adding:
  // settings: "unslick"
  // instead of a settings object
]
});

var galleryThumbs = new Swiper('.gallery-thumbs', {
  spaceBetween: 10,
  slidesPerView: 2,
  loop: true,
  freeMode: true,
  loopedSlides: 5, //looped slides should be the same
  watchSlidesVisibility: true,
  watchSlidesProgress: true,
});
var galleryTop = new Swiper('.gallery-top', {
  spaceBetween: 10,
  loop:true,
  loopedSlides: 5, //looped slides should be the same
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  thumbs: {
    swiper: galleryThumbs,
  },
});
