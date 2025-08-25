<!-- About us -->
<section class="about-hero py-5 py-lg-6">
<div class="container">
  <div class="row align-items-center g-5">
      <!-- Left: Copy -->
      <div class="col-lg-6">
        <div class="small text-uppercase tracking-wider mb-2 text-secondary"> 
            <svg width="153" height="2" viewBox="0 0 153 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                <line x1="0.553631" y1="0.784259" x2="152.249" y2="0.784259" stroke="black" stroke-width="1.10726" stroke-linecap="round"/>
            </svg>
           <span class="about-us-small"> About Us </span>
        </div>
        <div class="title">
        <h1>
          Get Your Digital<br>
          Presence Elevated<br>
          With Creative
        </h1>
         <p class="mb-4">
          Experience a transformative journey online with creative cutting-edge website templates.
          Elevate your digital presence effortlessly and captivate your audience with modern design.
         </p>
        </div>

        <div class="d-flex align-items-center flex-wrap mb-4" style=" gap: 40px;">
          <a href="#" class="btn btn-about btn-outline-dark rounded-pill px-4 py-2 fw-semibold">Hire Us</a>
          <a href="#" class="d-inline-flex btn-how-itworks gap-3 align-items-center text-decoration-none btn-play">
            <svg width="68" height="70" viewBox="0 0 68 70" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M60.4503 34.7C60.4503 48.5357 49.2342 59.7518 35.3985 59.7518C21.5627 59.7518 10.3467 48.5357 10.3467 34.7C10.3467 20.8643 21.5627 9.64819 35.3985 9.64819C49.2342 9.64819 60.4503 20.8643 60.4503 34.7Z" fill="#CC067F"/>
            <path d="M66.6271 21.4036C63.5509 14.1788 58.0648 8.24417 51.1035 4.61086C44.1422 0.977542 36.1365 -0.129642 28.4504 1.47796C20.7643 3.08555 13.8734 7.30847 8.9518 13.4272C4.03022 19.5459 1.38247 27.1818 1.45969 35.0338C1.53692 42.8858 4.33434 50.4682 9.37532 56.4889C14.4163 62.5096 21.3889 66.5962 29.1051 68.0523C36.8214 69.5084 44.8038 68.244 51.6922 64.4744C58.5807 60.7049 63.949 54.6635 66.8825 47.3796" stroke="#CC067F" stroke-width="0.983308"/>
            <path d="M42.0763 33.8484C42.7318 34.2269 42.7318 35.1731 42.0763 35.5516L32.7973 40.9088C32.1418 41.2873 31.3223 40.8142 31.3223 40.0572L31.3223 29.3427C31.3223 28.5858 32.1418 28.1127 32.7973 28.4912L42.0763 33.8484Z" fill="white"/>
            </svg>

            <span class="fw-semibold">See How It Works</span>
          </a>
        </div>
        <!-- Stats -->
        <div class="row g-0 pt-3 border-top border-1 border-light-subtle stats text-center happay-customer">
          <div class="col-4 py-3">
            <div class="h3 mb-0 fw-bold text-danger">200k+</div>
            <small class="text-secondary">Happy Customer</small>
          </div>
          <div class="col-4 py-3 border-start border-end border-light-subtle">
            <div class="h3 mb-0 fw-bold text-warning">500+</div>
            <small class="text-secondary">Complete Project</small>
          </div>
          <div class="col-4 py-3">
            <div class="h3 mb-0 fw-bold text-primary">50+</div>
            <small class="text-secondary">Team Members</small>
          </div>
        </div>
      </div>

      <!-- Right: Media stack -->
      <div class="col-lg-6">
        <div class="media-grid position-relative mx-auto">
          <!-- decorative bubbles -->
          <span class="bubble bubble-lg d-none d-md-block">
             <img
              src="{{asset('assets/images/home_assets/about-icon-bottom.svg')}}"
              alt="Team working 2"
              class="img-fluid rounded-4 adjust-size"
            />
          </span>
    
          <div class="media-stage position-relative">
            <!-- Back image  -->
            <img
              src="{{asset('assets/images/home_assets/about-laptop.svg')}}"
              alt="Team working"
              class="img-fluid shadow-lg rounded-4 back-img"
            />
            
            <!-- Front image -->
            <img
              src="{{asset('assets/images/home_assets/about-laptop.svg')}}"
              alt="Team working 2"
              class="img-fluid shadow-lg rounded-4 front-img"
            />
          </div>

          <!-- top-right ring decoration -->
          <div class="ring deco-ring d-none d-md-block ">
             <img
              src="{{asset('assets/images/home_assets/about-icon-top.svg')}}"
              alt="Team working 2"
              class="img-fluid rounded-4 adjust-size"
            />
          </div>
        </div>
      </div>
    </div>
</div>
</section>

<style>
.about-hero{ background:#fff; }
.about-hero h1 {
    font-weight:700;
}
.about-hero p {
 font-size:18.68px;
 line-height:29.5px;
}
.about-us-small {
    font-size:19.07px;
}
.about-us-small {
    position: relative;
    left: 20px;
}
.about-hero{ background:#fff; }
.tracking-wider{ letter-spacing:.12em; }
.happay-customer .h3 {
    font-size: 42.05px;
}
.happay-customer .text-secondary {
    font-size: 14px;
}
/* Play button */
.btn-about {
    width: 212.57554626464844px;
    height: 52.572444915771484px;
    line-height: 32px;
    font-size: 19.05px;
    font-weight: 700;
}
.btn-how-itworks {
    line-height: 32px;
    font-size: 19.05px;
    font-weight: 700;  
}
.btn-play .play-ring{
  width:44px; height:44px; border-radius:50%;
  display:inline-block; position:relative; flex:0 0 44px;
  background:
    radial-gradient(circle at 50% 50%, #ff4ea2 0 34%, #fff0 35%),
    radial-gradient(circle at 50% 50%, #fff0 0 56%, #8b2cf5 57% 100%);
  outline:6px solid #ff4ea23d;
}
.btn-play{ color:#111; }
.btn-play:hover{ opacity:.9; }

/* Right column dashed grid container */
.media-grid{
  max-width: 640px;         /* keep it tidy in the column */
  padding: 0;
  border-radius: 0;
  border:1px dashed rgba(0,0,0,.15);
  background:
    repeating-linear-gradient(0deg, rgba(0,0,0,.05) 0 1px, transparent 1px 32px),
    repeating-linear-gradient(90deg, rgba(0,0,0,.05) 0 1px, transparent 1px 32px);
}

/* Stage height scales with viewport */
.media-stage{
  position: relative;
  min-height: clamp(360px, 52vw, 640px);
}
.media-stage img{ object-fit: cover; }

/* Decorative images inside .bubble/.deco-ring fill their wrappers */
.adjust-size{
  position: static;      /* was absolute – makes it fluid */
  width: 100%;
  height: auto;
  display: block;
}

/* Overlapped images (desktop defaults) */
.back-img{
  width: 50%;
  position:absolute; top: 6%; left: 8%;
  aspect-ratio: 3/4;
}
.front-img{
  width: 50%;
  position:absolute; top: 22%; right: 8%;
  aspect-ratio: 3/4;
}

/* Decorative bubbles */
.bubble{
  position:absolute; border-radius:50%;
  background: transparent;  /* image used instead */
}
.bubble-lg{
 width: 160px;
 bottom: -5%;
 left: -6%;
}
.bubble-sm{ width:18px; height:18px; bottom:12%; left:30%; background:#ff4ea2; }
.bubble-mini{ width:10px; height:10px; bottom:20%; left:36%; background:#ff4ea2; }

/* Top-right ring decoration */
.deco-ring{
  position:absolute; top:-28px; right:-6px;
  width:140px; height:140px;
  display:grid; place-items:center;
  border-radius:50%;
}

/* ======= Breakpoints ======= */

/* Large (≥992px) – fine-tune spacing */
@media (max-width: 1199.98px){
  .media-grid{ max-width: 580px; }
  .back-img, .front-img{ width: 56%; }
  .back-img{ left:6%; top:7%; }
  .front-img{ right:6%; top:26%; }
  .bubble-lg{ width: 140px;  bottom: -5%; left: -6%; }
  .deco-ring{ width:130px; height:130px; top:-24px; }
}

/* Medium (≥768px and <992px) – keep overlap but larger images */
@media (max-width: 991.98px){
  .media-grid{ max-width: 560px; }
  .media-stage{ min-height: clamp(380px, 60vw, 520px); }
  .back-img, .front-img{ width: 50%; }
  .back-img{ left:5%; top:5%; }
  .front-img{ right:5%; top:25%; }
}

/* Small (<768px) – show single centered card, simplify decorations */
@media (max-width: 767.98px){
  .media-grid{
    border:none;            /* clean mobile look */
    background:none;
    max-width: 100%;
    padding: 18px 0;
  }
  .media-stage{ min-height: auto; }
  .back-img{ display:none; }             /* hide back image on mobile */
  .front-img{
    position: relative; top: 0; right: auto;
    width: 100%; aspect-ratio: auto;     /* full width card */
  }
  .bubble-lg, .deco-ring{ display:none !important; } /* already d-none d-md-block, just in case */
}

/* Extra-small (<576px) – small refinements */
@media (max-width: 575.98px){
  .media-grid{ padding: 0; }
}
</style>