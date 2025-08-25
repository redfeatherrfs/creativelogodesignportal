<!-- Recent Work Section with Slider -->
<section class="sec-bg-primary howitwork"   style="background-image: url('{{ asset('assets/images/home_assets/howitwork.svg') }}'); ">
<div class="container">

  <!-- Recent Work -->
    <div class="row">
    <!-- left -->
     <div class="col-7">
      <div class="title text-white">
        <h2>How It Works</h2>
        <p class="subtitle text-white">Powerful, scalable, innovative design done in three easy steps.</p>
        <div class="d-flex ">
            <img src="{{asset('assets/images/home_assets/howitwork-pen-tool.png')}}" class="pen-tool-icon imge-responsive" alt="Pen Tool">
        </div>
      </div>

     </div>
     <!-- right -->
     <div class="col-5 choose-plans">

     <!-- 1 -->
      <div class="row align-items-center g-4 py-1">
      <div class="col-3 col-sm-2 col-md-1 d-flex justify-content-start">
         <img src="{{asset('assets/images/home_assets/key-point-1.svg')}}" class="icon-point-size imge-responsive" alt="Pen Tool 1">
      </div>
      <div class="col-9 col-sm-10 col-md-11 pl-70">
        <h3 class="text-white fw-bold mb-3">Choose Your Plan</h3>
        <p class="subtitle mb-0 text-white">
          Select a subscription tier that matches your design needs. Scale up or down anytime.
        </p>
      </div>
      <div class="col-12"><hr class="border-bottom m-0"></div>
     </div>
     <!-- 2 -->
     <div class="row align-items-center g-4 py-4">
      <div class="col-3 col-sm-2 col-md-1 d-flex justify-content-start">
         <img src="{{asset('assets/images/home_assets/key-point-2.svg')}}" class="icon-point-size imge-responsive" alt="Pen Tool 2">
       </div>
      <div class="col-9 col-sm-10 col-md-11 pl-70">
        <h3 class="text-white fw-bold mb-3">Request Designs</h3>
        <p class="subtitle mb-0 text-white">
          Submit unlimited design requests through our simple project dashboard.
        </p>
      </div>
      <div class="col-12"><hr class="border-bottom m-0"></div>
     </div> 
     <!-- 3 -->
     <div class="row align-items-center g-4 py-4">
      <div class="col-3 col-sm-2 col-md-1 d-flex justify-content-start">
         <img src="{{asset('assets/images/home_assets/key-point-3.svg')}}" class="icon-point-size imge-responsive" alt="Pen Tool 2">
       </div>
      <div class="col-9 col-sm-10 col-md-11 pl-70">
        <h3 class="text-white fw-bold mb-3">Receive & Revise</h3>
        <p class="subtitle mb-0 text-white">
          Get designs within 24-48 hours with unlimited revisions until perfect.
        </p>
      </div>
      <div class="col-12"><hr class="border-bottom m-0"></div>
     </div> 

    </div>
  </div>
</div>
<!-- end container -->
<div class="container-fluid">
  <div id="recentWorkCarousel" class="carousel slide" data-bs-ride="carousel">
    <!-- Slides -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="row justify-content-center">
          <div class="col-10 col-md-3">
            <div class="text-center">
              <img src="{{asset('assets/images/home_assets/portfolio/img1.png')}}" class="img-fluid rounded" alt="Project 1">
              <p class="mt-2 fw-bold text-white">VitaCare<br>Healthtech</p>
            </div>
          </div>
          <div class="col-10 col-md-3 d-none d-md-block">
            <div class="text-center">
              <img src="{{asset('assets/images/home_assets/portfolio/img2.png')}}" class="img-fluid rounded" alt="Project 2">
              <p class="mt-2 fw-bold text-white">VitaCare<br>Healthtech</p>
            </div>
          </div>
          <div class="col-10 col-md-3 d-none d-md-block">
            <div class="text-center">
              <img src="{{asset('assets/images/home_assets/portfolio/img3.png')}}" class="img-fluid rounded" alt="Project 3">
              <p class="mt-2 fw-bold text-white">VitaCare<br>Healthtech</p>
            </div>
          </div>
        </div>
      </div>

      <div class="carousel-item">
        <div class="row justify-content-center">
          <div class="col-10 col-md-3">
            <div class="text-center">
              <img src="{{asset('assets/images/home_assets/portfolio/img4.png')}}" class="img-fluid rounded" alt="Project 4">
              <p class="mt-2 fw-bold text-white">VitaCare<br>Healthtech</p>
            </div>
          </div>
          <div class="col-10 col-md-3 d-none d-md-block">
            <div class="text-center">
              <img src="{{asset('assets/images/home_assets/portfolio/img5.png')}}" class="img-fluid rounded" alt="Project 2">
              <p class="mt-2 fw-bold text-white">VitaCare<br>Healthtech</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Controls -->
    <button class="carousel-control-prev" type="button" data-bs-target="#recentWorkCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon bg-dark rounded-circle p-3" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#recentWorkCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon bg-dark rounded-circle p-3" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

</div>
</section>


