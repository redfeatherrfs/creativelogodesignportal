<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
<!-- Header :: drop into your Blade layout -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<!-- theme css -->
<link rel="stylesheet" href="{{asset('assets/scss/creative.css')}}" />
<link rel="stylesheet" href="{{asset('assets/scss/basit.css')}}" />
<script src="{{asset('assets/js/creative.js')}}"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

@include('user.layouts.header')

<body>
 

 
@include('user.home.index')


@include('user.layouts.footer')


<script>
$(function () {
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
});
</script>
</body>

</html>
