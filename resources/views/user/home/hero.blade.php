<!-- ===== Hero ===== -->
<section class="hero position-relative">
  <!-- decorative rings -->

<!-- Top-left rings -->
   <div class="hero-deco-clip" aria-hidden="true">
    <div class="hero-deco hero-deco--tl" aria-hidden="true">
      <svg viewBox="0 0 236 363" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="-26.1208" cy="101.399" r="259.908" transform="rotate(-30 -26.1208 101.399)" stroke="url(#paint0_tl)" stroke-width="3"/>
        <circle cx="-26.1212" cy="101.399" r="212.693" transform="rotate(-30 -26.1212 101.399)" stroke="url(#paint1_tl)" stroke-width="3"/>
        <circle cx="-26.1212" cy="101.399" r="166.662" transform="rotate(-30 -26.1212 101.399)" stroke="url(#paint2_tl)" stroke-width="3"/>
        <defs>
          <linearGradient id="paint0_tl" x1="-26.1208" y1="-160.009" x2="-26.1208" y2="362.807" gradientUnits="userSpaceOnUse">
            <stop stop-color="#662E91"/><stop offset="1" stop-color="#CC067F"/>
          </linearGradient>
          <linearGradient id="paint1_tl" x1="-26.1212" y1="-112.794" x2="-26.1212" y2="315.592" gradientUnits="userSpaceOnUse">
            <stop stop-color="#662E91"/><stop offset="1" stop-color="#CC067F"/>
          </linearGradient>
          <linearGradient id="paint2_tl" x1="-26.1212" y1="-66.7632" x2="-26.1212" y2="269.561" gradientUnits="userSpaceOnUse">
            <stop stop-color="#662E91"/><stop offset="1" stop-color="#CC067F"/>
          </linearGradient>
        </defs>
      </svg>
    </div>
    <!-- Bottom-right rings -->
    <div class="hero-deco hero-deco--br" aria-hidden="true">
      <svg viewBox="0 0 207 523" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="262.091" cy="261.539" r="259.908" transform="rotate(-30 262.091 261.539)" stroke="url(#paint0_br)" stroke-width="3"/>
        <circle cx="262.091" cy="261.539" r="212.693" transform="rotate(-30 262.091 261.539)" stroke="url(#paint1_br)" stroke-width="3"/>
        <circle cx="262.091" cy="261.539" r="166.662" transform="rotate(-30 262.091 261.539)" stroke="url(#paint2_br)" stroke-width="3"/>
        <defs>
          <linearGradient id="paint0_br" x1="262.091" y1="0.130829" x2="262.091" y2="522.947" gradientUnits="userSpaceOnUse">
            <stop stop-color="#662E91"/><stop offset="1" stop-color="#CC067F"/>
          </linearGradient>
          <linearGradient id="paint1_br" x1="262.091" y1="47.3462" x2="262.091" y2="475.732" gradientUnits="userSpaceOnUse">
            <stop stop-color="#662E91"/><stop offset="1" stop-color="#CC067F"/>
          </linearGradient>
          <linearGradient id="paint2_br" x1="262.091" y1="93.3768" x2="262.091" y2="429.701" gradientUnits="userSpaceOnUse">
            <stop stop-color="#662E91"/><stop offset="1" stop-color="#CC067F"/>
          </linearGradient>
        </defs>
      </svg>
    </div>
  </div>

  <div class="container">
    <div class="row align-items-center g-4">
      <!-- Left: Copy -->
      <div class="col-lg-7">
        <div class="eyebrow-about d-flex align-items-center gap-3">
          <span class="eyebrow-line-about"></span>
          <span>We Are Creative Studio</span>
        </div>

        <h1 class="hero-title mt-3">
          We’re A Web Design<br>
          Agency From<br>
          Los Angeles, CA
        </h1>

        <p class="hero-sub mt-3 mb-0">
          Lorem ipsum dolor sit amet consectetur repreh endisicing elit, sed do eiusmod tempor aliqua
          incididunt ut labore et dolore magna.
        </p>
      </div>

      <!-- Right: Video card -->
      <div class="col-lg-5">
        <div class="hero-media">
          <div class="ratio" style="--bs-aspect-ratio: 100%;">
            <video class="hero-video" playsinline muted autoplay loop
                   poster="{{ asset('assets/images/hero-poster.jpg') }}">
              <source src="{{ asset('assets/images/CreativeLogoDesignBanner.mp4') }}" type="video/mp4">
              <source src="{{ asset('assets/images/CreativeLogoDesignBanner.mp4') }}" type="video/mp4">
              Your browser does not support the video tag.
            </video>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

