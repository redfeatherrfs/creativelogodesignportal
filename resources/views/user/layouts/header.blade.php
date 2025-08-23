<!-- Header :: drop into your Blade layout -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="{{asset('assets/scss/creative.css')}}" />
<script src="{{asset('assets/js/creative.js')}}"></script>


<header class="site-header">
  <!-- Top bar -->
  <div class="topbar">
    <div class="container">
      <div class="tb-left">
        <span><i class="fa-solid fa-headphones-simple"></i> 1-555-372</span>
        <span class="sep"></span>
        <span><i class="fa-regular fa-clock"></i> Mon - Sat: 8:00 - 17:00</span>
        <span class="sep"></span>
        <a href="mailto:xyz@gmail.com" class="email"><i class="fa-regular fa-envelope"></i> XYZ@Gmail.com</a>
      </div>
      <div class="tb-right">
        <nav class="social">
          <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
          <a href="#"><i class="fa-brands fa-twitter"></i></a>
          <a href="#"><i class="fa-brands fa-instagram"></i></a>
        </nav>
        <div class="lang">
          <button class="lang-btn" aria-haspopup="true" aria-expanded="false">
            En <img src="https://flagcdn.com/w20/gb.png" alt="English" width="18" height="12"> <i class="fa-solid fa-chevron-down"></i>
          </button>
          <ul class="lang-menu" role="menu" aria-label="Language">
            <li role="menuitem"><a href="#"><img src="https://flagcdn.com/w20/gb.png" alt=""> English</a></li>
            <li role="menuitem"><a href="#"><img src="https://flagcdn.com/w20/pk.png" alt=""> Urdu</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <!-- Main nav -->
  <div class="mainnav">
    <div class="container">
      <a class="logo" href="/">
        <!-- Replace with your <img> if needed -->
        <span class="logo-mark">C</span>
        <span class="logo-text">
          <strong>reative</strong>
          <small>Logo Design</small>
        </span>
      </a>

      <button class="nav-toggle" aria-label="Toggle menu" aria-expanded="false">
        <i class="fa-solid fa-bars"></i>
      </button>

      <nav class="nav" role="navigation">
        <ul>
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Portfolio</a></li>
          <li><a href="#">Elements</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Shop</a></li>
        </ul>
      </nav>

      <div class="utilities">
        <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
        <a href="#" aria-label="Twitter"><i class="fa-brands fa-twitter"></i></a>
        <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
      </div>
    </div>
  </div>

    
</header>
