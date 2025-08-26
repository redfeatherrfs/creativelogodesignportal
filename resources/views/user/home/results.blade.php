<section class="sec-bg-primary our-results "  style="background-image: url('{{ asset('assets/images/home_assets/fashion-designer-sketch-drawing-costume-concept.jpg') }}'); ">
 <div class="overlay"></div>
 <div class="container">
  <div class="row">
   <div class="col-md-12">
     <div class="title text-white">
      <h2>
        OUR RESULTS-DRIVEN WEB <br>
        DESIGN And marketing <br>
        campaigns
      </h2>
      <p class="subtitle text-white">All Things Design, We Got You Covered.</p>
    </div>

    <div class="slide-container">
    <div class="slider-for">
        <div class="back-cover" data-slide-cover="slide-cover-1" style="background-image: url('{{ asset('assets/images/home_assets/Background-image1.png') }}'); "></div>
    </div>

    <div class="slider-nav">
        <div class="back-thp"   style="background-image: url('{{ asset('assets/images/home_assets/animation-glowing-fibers-alternate-colors.jpg') }}'); ">
         <div class="innter-title text-white">
          <h2>
            WOW Media    
          </h2>
        </div>
       </div>
     </div>
    </div>

    <div class="row ">
      <div class="col-12 d-flex align-items-center gap-4" style="margin: 60px;">
        <!-- Dots -->
        <div class="custom-dots">
        <span class="dot" data-slide="0" data-slide-image="{{ asset('assets/images/home_assets/Background-image2.png') }}"></span>
        <span class="dot" data-slide="1" data-slide-image="{{ asset('assets/images/home_assets/Background-image2.png') }}"></span>
        <!-- <span class="dot active" data-slide="slide-3"></span>
        <span class="dot" data-slide="slide-4"></span>
        <span class="dot" data-slide="slide-5"></span>
        <span class="dot" data-slide="slide-6"></span>
        <span class="dot" data-slide="slide-7"></span>-->
        </div> 
        <!-- Button -->
        <button class="btn custom-btn">See Our Work</button>
        </div>
    </div>
    
   </div>
  </div>
 </div>
</section>

<style>
.our-results {
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;   
    z-index: 1; 
    background-repeat: no-repeat;
    background-size: cover;
    min-height: 402px;
    padding: 40px 0%;
    } 
.our-results .container {position: relative; z-index: 1;}
.overlay {
    background: linear-gradient(265.77deg, rgba(0, 0, 0, 0) -55.33%, #000000 87.67%, #000000 136.47%);
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 0;
    top: 0px;
}
.slide-container {
    width: 629.4068603515625px;
    height: 232.77967834472656px;
    overflow: hidden;
}
.slider-for {
   width: 629.4068603515625px !important;  
}
.slider-for .back-cover {
    width: 629.4068603515625px !important;
    height: 232.77967834472656px;
    border-radius: 157.35px;
    color: #fff;
    text-align: center;
    display: flex !important;
    justify-content: center;
    align-items: center;
    border: 1px solid #fff;
    position: relative;
    background-size: cover;
    background-repeat: no-repeat;
}
.slider-nav {
    max-width: 629.4068603515625px !important;
}
.slider-nav .back-thp {
    width: 206px;
    height:206px;
    border-radius:100%;
    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    border: 1px solid #fff;
    position: relative;
    z-index: 10;
    top:-220px;
    float:right;
    right: 20px;
    background-size: cover;
    background-repeat: no-repeat;
}
.innter-title {
    position: relative !important;
    top: 0px !important;
    left: 0;
}
.innter-title h2 
{
    font-size:21.58px;
    font-weight:700;
    text-align:center;
    line-height:23.74px;
}
  /* Dots styling */
    .custom-dots {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .dot {
      width: 12px;
      height: 12px;
      background-color: #bbb;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.3s;
    }
    .dot.active {
      background-color: #e6007e; /* pink */
    }

    /* Button styling */
    .custom-btn {
      background: #fff;
      border-radius: 50px;
      padding: 10px 25px;
      font-weight: 600;
      border: none;
      box-shadow: 0 2px 6px rgba(0,0,0,0.15);
    }

</style>
