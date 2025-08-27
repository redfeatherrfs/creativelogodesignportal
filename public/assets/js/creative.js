$(function () {
  console.log('jquery works!')
  const $services = $('.service');
  const $images   = $('.screen img');

  let activeIndex = 0;
  let isAnimating = false;
  let hoverTimer  = null;

  // Init positions
  $images.css({ left: '100%', opacity: 0, position: 'absolute', top: 0 });
  $images.eq(activeIndex).css({ left: '0%', opacity: 1 });

  function showImage(index) {
    index = +index;
    if (index === activeIndex || isAnimating) return;

    isAnimating = true;

    const $current = $images.eq(activeIndex);
    const $next    = $images.eq(index);

    // Prepare next slide (start off-screen right)
    $next.stop(true, true).css({ left: '100%', opacity: 0, zIndex: 2 });

    // Animate both slides
    $current.stop(true, true).css({ zIndex: 1 }).animate(
      { left: '-100%', opacity: 0 },
      500,
      function () {
        // Reset old slide to the right, ready for future entries
        $current.css({ left: '100%', opacity: 0 });
      }
    );

    $next.animate(
      { left: '0%', opacity: 1 },
      500,
      function () {
        activeIndex = index;
        isAnimating = false;
      }
    );
  }

  // Click (also sets active state)
  $services.on('click', function () {
    const idx = $(this).data('index');
    $services.removeClass('active');
    $(this).addClass('active');
    showImage(idx);
  });


  // slick slider
   const $slider = $('.recent-work').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        infinite: false,
        arrows: false,     // we use our own arrows
        dots: false,       // turned on below for small screens
        speed: 450,
        cssEase: 'ease',
        adaptiveHeight: false,
        responsive: [
          {
            breakpoint: 1200,
            settings: { slidesToShow: 3 }
          },
          {
            breakpoint: 992,
            settings: { slidesToShow: 2, dots: true }
          },
          {
            breakpoint: 576,
            settings: { slidesToShow: 1, dots: true, centerMode: true, centerPadding: '24px' }
          }
        ]
      });

      // External arrow controls
      $('#prevBtn').on('click', () => $slider.slick('slickPrev'));
      $('#nextBtn').on('click', () => $slider.slick('slickNext'));

      // Keyboard accessibility for external buttons
      $('#prevBtn, #nextBtn').on('keydown', function(e){
        if(e.key === 'Enter' || e.key === ' '){
          e.preventDefault();
          $(this).trigger('click');
        }
      });

      $(".dot").on("click", function () {
        const $dot = $(this);
        const idx  = $(".dot").index(this);            // 0-based index
        const bgImage      = $dot.data("slide-image");
        const bgImageCover = $dot.data("slide-cover-image");

        // 1) Update backgrounds (if provided)
        if (bgImage) {
          $(".back-cover").css({
            "background-image": "url(" + bgImage + ")",
            "background-size": "cover",
            "background-position": "center"
          });
        }
        if (bgImageCover) {
          $(".back-thp").css({
            "background-image": "url(" + bgImageCover + ")",
            "background-size": "cover",
            "background-position": "center"
          });
        }

        // 2) Animate .back-thp
        const $thp = $(".back-thp");
        $thp.stop(true, true).css({ position: "relative" });

        if (idx === 1) {
          // For dot index 1: animate from 65% -> 0%
          $thp.css({ right: "65%" }).animate({ right: "2%" }, 600);
        } else {
          // Default (others): animate from 0% -> 65% (adjust as you like)
          $thp.css({ right: "2%" }).animate({ right: "65%" }, 600);
        }

        // 3) Active state
        $(".dot").removeClass("active");
        $dot.addClass("active");
      });

     
});
