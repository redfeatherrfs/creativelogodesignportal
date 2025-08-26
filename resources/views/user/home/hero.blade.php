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
        <div class="eyebrow d-flex align-items-center gap-3">
          <span class="eyebrow-line"></span>
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
<style>
 /* ===== Hero styles ===== */
:root{
  --hero-bg: #0B0B0B;
  --hero-text: #fff;
  --hero-sub: #C7C7C7;
  --hero-accent: #9D5CFF;          /* purple */
  --hero-grad-1: #2A1247;
  --hero-grad-2: #140A25;
}

.hero{
  background: var(--hero-bg);
  color: var(--hero-text);
  padding:0;
  position: relative; overflow: visible;  /* crops decorative rings */
}

.hero .container { position: relative; z-index: 2; }

.hero-deco-clip{
  position: absolute;
  inset: 0;                /* full size of hero */
  overflow: hidden;        /* <= clips ONLY the children (the rings) */
  pointer-events: none;    /* clicks pass through */
  z-index: 1;              /* behind content */
}
.hero-deco {
  position: absolute;
  pointer-events: none;
  opacity: 0.9;
  z-index: 1;            /* behind content */
}

.hero-deco--tl {
  top: -120px;           /* pull partially off-screen like mockup */
  left: -120px;
  width: min(360px, 40vw);
}

.hero-deco--br {
  right: -63px;
  bottom: -400px;
  width: min(340px, 38vw);
}
@media (min-width: 1200px){
  .hero-media{ margin-left: -6%; }
}

/* Mobile: full-width card, natural flow */
@media (max-width: 991.98px){
  .hero-media{
    width: 100%;
    margin-left: 0;
    border-radius: 12px;
  }
}

@media (max-width: 991.98px) {
  .hero-deco { opacity: .6; }
  .hero-deco--tl { top: -150px; left: -180px; width: 55vw; }
  .hero-deco--br { right: -200px; bottom: -220px; width: 60vw; }
}

/* Eyebrow */
.eyebrow{ font-weight: 400; letter-spacing:.02em; color:#dcd6e8; opacity:.9; }
.eyebrow-line{
  display:inline-block; width: 110px; height: 2px; background: #fff;
}

/* Title + sub */
.hero-title{
font-size: 76.36px;
line-height: 1.05;
font-weight: 800;
letter-spacing: .2px;
margin: 0;
position: relative;
z-index: 11;
text-transform: capitalize;
}
.hero-sub{
  max-width: 46ch;
  color: #fff;
  font-size:19.81px;
  line-height: 1.65;
}

/* Right media card with deep purple radial gradient */
.hero-media{
  background: none;
  border-radius: 0px;
  box-shadow: 0 20px 60px rgba(0,0,0,.55), inset 0 1px 0 rgba(255,255,255,.04);
  width: min(620px, 46vw);
  height: 690.1207275390625px;
  position: relative;
  z-index: 10;
  transform: translate(-17%, 25%);
  padding:0px;
  margin-top: clamp(12px, 3vw, 40px);
}

/* Video fit + subtle overlay */
.hero-video-wrap{ overflow: hidden; }
.hero-video{
  width: 100%; height: 100%; object-fit: cover;
  display: block;
}
.hero-video-wrap::after{
  content:""; position:absolute; inset:0; pointer-events:none;
  border-radius: inherit;
  box-shadow: inset 0 0 0 1px rgba(255,255,255,.06);
}

/* Decorative rings */
.hero-ring{
  position:absolute; width: 360px; height: 360px;
  opacity:.85;
}
.hero-ring--tl{ top: -40px; left: -40px; }
.hero-ring--br{ right: -40px; bottom: -60px; }

/* Tweak spacing on small screens */
@media (max-width: 991.98px){
  .hero .container{ position: relative; z-index: 1; }
  .hero-ring{ opacity:.5; }
  .hero-ring--br{ width: 300px; height: 300px; right:-60px; bottom:-80px; }
  .hero-ring--tl{ width: 260px; height: 260px; left:-60px; top:-60px; }
  .hero-media{ margin-top: 8px; }
}

</style>
