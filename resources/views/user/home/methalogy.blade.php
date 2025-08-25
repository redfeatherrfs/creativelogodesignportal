<section class="methodology-2">
  <div class="container-fluid">
    <div class="row align-items-center g-4">

      <!-- LEFT: rotating ring + background -->
      <!-- LEFT: box + ring INSIDE the box -->
      <div class="col-lg-6">
        <div id="toolBg" class="tool-bg">
          <div class="ring-wrap">
            <div class="ring" id="ring">
              <!-- 8 icons around -->
              <img src="{{asset('assets/images/home_assets/1.png')}}"  class="ring-icon" style="--i:0"  alt="">
              <img src="{{asset('assets/images/home_assets/2.png')}}"  class="ring-icon" style="--i:1"  alt="">
              <img src="{{asset('assets/images/home_assets/3.png')}}"  class="ring-icon" style="--i:2"  alt="">
              <img src="{{asset('assets/images/home_assets/4.png')}}"  class="ring-icon" style="--i:3"  alt="">
              <img src="{{asset('assets/images/home_assets/5.png')}}"  class="ring-icon" style="--i:4"  alt="">
              <img src="{{asset('assets/images/home_assets/6.png')}}"  class="ring-icon" style="--i:5"  alt="">
              <img src="{{asset('assets/images/home_assets/7.png')}}"  class="ring-icon" style="--i:6"  alt="">
              <img src="{{asset('assets/images/home_assets/8.png')}}"  class="ring-icon" style="--i:7"  alt="">

              <!-- CENTER image that changes -->
              <img id="ringCenter" src="{{asset('assets/images/home_assets/Design & Iteration.jpg')}}" class="ring-center" alt="center">
            </div>
          </div>
        </div>
      </div>


      <!-- RIGHT: accordion -->
      <div class="col-lg-6">
       <div class="accordion acc-steps" id="steps4">

  <div class="accordion-item" data-bg="1">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button"
              data-bs-toggle="collapse" data-bs-target="#s1">
        <span class="acc-title">Discovery & Strategy</span>
        <span class="acc-arrow"></span>
      </button>
    </h2>
    <div id="s1" class="accordion-collapse collapse" data-bs-parent="#steps4">
      <div class="accordion-body">
        We begin by understanding your goals, audience, and competitive landscape.
      </div>
    </div>
  </div>

  <div class="accordion-item" data-bg="2">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button"
              data-bs-toggle="collapse" data-bs-target="#s2">
        <span class="acc-title">Concept Development</span>
        <span class="acc-arrow"></span>
      </button>
    </h2>
    <div id="s2" class="accordion-collapse collapse" data-bs-parent="#steps4">
      <div class="accordion-body">Brainstorming, creative direction, and success criteria.</div>
    </div>
  </div>

  <div class="accordion-item" data-bg="3">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button"
              data-bs-toggle="collapse" data-bs-target="#s3">
        <span class="acc-title">Design & Iteration</span>
        <span class="acc-arrow"></span>
      </button>
    </h2>
    <div id="s3" class="accordion-collapse collapse" data-bs-parent="#steps4">
      <div class="accordion-body">Wireframes, prototypes, and user feedback cycles.</div>
    </div>
  </div>

  <div class="accordion-item" data-bg="4">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button"
              data-bs-toggle="collapse" data-bs-target="#s4">
        <span class="acc-title">Development & Execution</span>
        <span class="acc-arrow"></span>
      </button>
    </h2>
    <div id="s4" class="accordion-collapse collapse" data-bs-parent="#steps4">
      <div class="accordion-body">Full build, QA testing, and final deployment.</div>
    </div>
  </div>

</div>

    </div>
  </div>
</section>


<script>
document.addEventListener('DOMContentLoaded', function () {
  const bgBox = document.getElementById('toolBg');
  const items = document.querySelectorAll('.acc-steps .accordion-item');

  function setBg(n){
    bgBox.style.backgroundImage = `url('assets/images/home_assets${n}.png')`;
  }

  // default
  setBg(1);

  items.forEach(item => {
    const n = item.getAttribute('data-bg');

    // hover
    item.addEventListener('mouseenter', () => setBg(n));

    // on show (expand)
    item.addEventListener('shown.bs.collapse', () => setBg(n));
  });
});
</script>
<script>
document.addEventListener('DOMContentLoaded', function () {
  const ring       = document.getElementById('ring');
  const centerImg  = document.getElementById('ringCenter');
  const items      = document.querySelectorAll('.acc-steps .accordion-item');

  // Map accordion -> image (exact filenames you gave)
  const base = 'assets/images/home_assets/';
  const imageMap = {
    1: base + encodeURI('executive-marketing-hand-holding-red-dart-put-centre-target-board-business-investment-goal-target-concept.jpg'),
    2: base + encodeURI('Concept Development.jpg'),
    3: base + encodeURI('Design & Iteration.jpg'),
    4: base + encodeURI('Development & Execution.jpg'),
  };

  function setCenter(n){
    const src = imageMap[n];
    if (src) { centerImg.src = src; }
  }

  // default center
  setCenter(1);

  // Hover or expand -> change center image
  items.forEach(item => {
    const n = parseInt(item.getAttribute('data-bg'), 10);
    item.addEventListener('mouseenter', () => setCenter(n));
    item.addEventListener('shown.bs.collapse', () => setCenter(n));
  });

  // Move 2s, pause 2s (loop)
  setInterval(() => { ring.classList.toggle('paused'); }, 2000);
});
</script>
