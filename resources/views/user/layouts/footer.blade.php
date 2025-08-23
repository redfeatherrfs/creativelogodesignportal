 <!-- ====== FOOTER ====== -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />

<footer class="site-footer">
  <div class="footer-wrap">
    <div class="container footer-grid">
      <!-- Brand / Headline -->
      <div class="footer-hero">
        <a class="logo mini" href="/">
          <span class="logo-mark">C</span>
          <span class="logo-text">
            <strong>reative</strong>
            <small>Logo Design</small>
          </span>
        </a>
        <h2 class="footer-title">LET’S GROW YOUR BRAND</h2>

        <div class="follow">
          <span>Follow Us</span>
          <nav class="social">
            <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
            <a href="#" aria-label="X"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="#" aria-label="LinkedIn"><i class="fa-brands fa-linkedin-in"></i></a>
            <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
            <a href="#" aria-label="Pinterest"><i class="fa-brands fa-pinterest-p"></i></a>
          </nav>
        </div>
      </div>

      <!-- Services columns -->
      <div class="footer-services">
        <div class="svc-col">
          <h3>WEB DESIGN</h3>
          <ul>
            <li><a href="#">Custom Website Design</a></li>
            <li><a href="#">Website Redesign Services</a></li>
            <li><a href="#">Responsive Website Design</a></li>
            <li><a href="#">UI UX Web Design</a></li>
            <li><a href="#">Shopify Web Design</a></li>
            <li><a href="#">Magento Web Design</a></li>
          </ul>
        </div>
        <div class="svc-col">
          <h3>WEB DEVELOPMENT</h3>
          <ul>
            <li><a href="#">E-Commerce Website Development</a></li>
            <li><a href="#">WordPress Development</a></li>
            <li><a href="#">Shopify Development</a></li>
            <li><a href="#">Magento Development</a></li>
            <li><a href="#">Laravel Development</a></li>
            <li><a href="#">Contentful Development</a></li>
          </ul>
        </div>
        <div class="svc-col">
          <h3>SEO</h3>
          <ul>
            <li><a href="#">Answer Engine Optimization (AEO)</a></li>
            <li><a href="#">SEO Audit Services</a></li>
            <li><a href="#">Page Speed Optimization</a></li>
            <li><a href="#">Content Marketing</a></li>
            <li><a href="#">Product Optimization Services</a></li>
            <li><a href="#">Google Analytics 4 Setup Services</a></li>
          </ul>
        </div>
        <div class="svc-col">
          <h3>DIGITAL MARKETING</h3>
          <ul>
            <li><a href="#">Marketing and Sales Automation</a></li>
            <li><a href="#">Pay-Per-Click Advertising (PPC)</a></li>
            <li><a href="#">Social Media Marketing</a></li>
            <li><a href="#">Email Marketing Services</a></li>
            <li><a href="#">Brand Strategy Services</a></li>
            <li><a href="#">Conversion Rate Optimization</a></li>
          </ul>
        </div>
      </div>

      <!-- Offices -->
      <div class="footer-offices">
        <div class="office">
          <h4>NYC</h4>
          <address>
            112 West 34th Street<br>
            18th Floor<br>
            New York, NY 10120
          </address>
        </div>
        <div class="office">
          <h4>LONG ISLAND</h4>
          <address>
            991 Main St.<br>
            Suite 200<br>
            Holbrook, NY 11741
          </address>
        </div>
        <div class="office">
          <h4>WASHINGTON D.C.</h4>
          <address>
            1101 Connecticut Avenue NW<br>
            Suite 450<br>
            Washington, DC 20036
          </address>
        </div>
        <div class="office">
          <h4>NASHVILLE</h4>
          <address>
            424 Church St<br>
            Suite 2000<br>
            Nashville, TN 37219
          </address>
        </div>
        <div class="office">
          <h4>LA</h4>
          <address>
            1100 Glendon Avenue<br>
            17th Floor<br>
            Los Angeles, CA 90024
          </address>
        </div>
        <div class="office">
          <h4>MIAMI</h4>
          <address>
            1221 Brickell Ave<br>
            Suite 900<br>
            Miami, FL 33131
          </address>
        </div>
        <div class="office">
          <h4>CHARLESTON</h4>
          <address>
            170 Meeting Street<br>
            Charleston, SC 29401
          </address>
        </div>
        <div class="office">
          <h4>RICHMOND</h4>
          <address>
            919 E. Main Street<br>
            Suite 1000<br>
            Richmond, VA 23219
          </address>
        </div>
        <div class="office">
          <h4>LAS VEGAS</h4>
          <address>
            2300 West Sahara Avenue 800<br>
            Las Vegas, NV 89102
          </address>
        </div>
        <div class="office">
          <h4>AUSTIN</h4>
          <address>
            2021 Guadalupe Street 260<br>
            Austin, Texas 78705
          </address>
        </div>
      </div>
    </div>

    <div class="container foot-bottom">
      <p>© {{ date('Y') }} Creative Logo Design — All rights reserved.</p>
      <nav class="foot-links">
        <a href="#">Privacy</a>
        <a href="#">Terms</a>
        <a href="#">Sitemap</a>
      </nav>
    </div>
  </div>
</footer>

<style>
/* ====== Footer Styles ====== */
:root{
  --f-bg:#1e1e1f;          /* dark grey panel, like screenshot */
  --f-grad:#2a2a2b;        /* soft gradient overlay */
  --f-text:#efefef;
  --f-muted:#c7c7c7;
  --f-sep:#3a3a3b;
  --container:1200px;
  --accent:#c792c4;        /* matches logo accent */
}

.site-footer{color:var(--f-text); background:linear-gradient(180deg,var(--f-bg),var(--f-grad));}
.site-footer .container{max-width:var(--container);margin-inline:auto;padding:0 18px}
.footer-wrap{padding:48px 0 24px;border-top:1px solid #0f0f0f}

.footer-grid{
  display:grid;
  grid-template-columns: 1.1fr 1.4fr 1.5fr;
  gap:32px 40px;
  align-items:start;
}

/* Brand / Headline */
.logo.mini{display:inline-flex;align-items:center;gap:8px;color:var(--f-text);text-decoration:none;margin-bottom:10px}
.logo.mini .logo-mark{
  width:44px;height:44px;display:grid;place-items:center;border-radius:50%;
  background:linear-gradient(145deg,#c792c4,#b261ad);font-weight:800
}
.logo.mini .logo-text small{display:block;color:#bdbdbd;letter-spacing:.18em}

.footer-title{
  font-size:44px;line-height:1.1;margin:8px 0 28px;font-weight:800;letter-spacing:.02em
}

.follow{display:flex;align-items:center;gap:14px;margin-top:18px}
.follow span{color:#d7d7d7;font-weight:600}
.social a{
  color:var(--f-text);opacity:.9;text-decoration:none;padding:8px;border-radius:8px;display:inline-flex
}
.social a:hover{opacity:1;background:#2b2b2c}

/* Services */
.footer-services{
  display:grid;
  grid-template-columns: repeat(2,minmax(200px,1fr));
  gap:24px 28px;
}
.footer-services h3{
  margin:0 0 12px;font-size:16px;letter-spacing:.06em;color:#ffffff;font-weight:800
}
.footer-services ul{margin:0;padding:0;list-style:none}
.footer-services li{margin:8px 0}
.footer-services a{
  color:var(--f-muted);text-decoration:none
}
.footer-services a:hover{color:#fff}

/* Offices */
.footer-offices{
  display:grid;
  grid-template-columns: repeat(2,minmax(180px,1fr));
  gap:18px 24px;
}
.footer-offices h4{margin:0 0 6px;font-size:14px;letter-spacing:.08em;color:#fff}
.footer-offices address{
  font-style:normal;color:var(--f-muted);line-height:1.45
}

/* Bottom bar */
.foot-bottom{
  border-top:1px solid var(--f-sep);
  margin-top:36px;
  padding-top:18px;
  display:flex;align-items:center;justify-content:space-between;gap:16px;
  color:#bdbdbd;font-size:14px
}
.foot-links a{color:#cccccc;text-decoration:none;margin-left:16px}
.foot-links a:hover{color:#ffffff}

/* Responsive */
@media (max-width:1100px){
  .footer-title{font-size:36px}
}
@media (max-width:980px){
  .footer-grid{
    grid-template-columns: 1fr;    /* stack blocks */
  }
  .footer-services{
    grid-template-columns: repeat(2,minmax(0,1fr));
  }
  .footer-offices{
    grid-template-columns: repeat(3,minmax(0,1fr));
  }
}
@media (max-width:680px){
  .footer-title{font-size:30px}
  .footer-services{
    grid-template-columns: 1fr;
  }
  .footer-offices{
    grid-template-columns: repeat(2,minmax(0,1fr));
  }
  .foot-bottom{flex-direction:column;text-align:center}
}
@media (max-width:420px){
  .footer-offices{
    grid-template-columns: 1fr;
  }
}
</style>
