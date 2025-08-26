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

      //  $(".back-cover").click(function(){
      //   let slidecover = $(this);
      //   console.log(slidecover.attr); 
      //   //  $("").animate({left: '250px'});
      //  });

      
      // $(".back-thp").click(function(){
      //   let slide = $(this);
      //   console.log(slide.attr); 
      //   //  $("").animate({left: '250px'});
      //  });

      $(".dot").on("click", function() {
        let bgImage = $(this).data('slide-image'); // get background from dot

        if(bgImage){  
          // 1. Update .back-cover background
          $(".back-cover").css({
            "background-image": "url(" + bgImage + ")",
            "background-size": "cover",
            "background-position": "center"
          });

          // 2. Animate .back-thp (slide in from right)
          $(".back-thp")
            .css({
              "position": "relative"
              // "right": "100%"   // start hidden on right
            })
            .animate({ right: "65%" }, 1000); // animate into place
        }

        // 3. Update active dot
        $(".dot").removeClass("active");
        $(this).addClass("active");
      });

     
});
