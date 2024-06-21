
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mainHeader</title>
   
   
</head>


 <link rel="stylesheet" href="home.css">

<body>
<jsp:include page="header.jsp"/>


    
   
   <!---------------Hero image slider -------------------->
        <div class="hero_section">
            <div class="slider_tabs">
                <input type="radio" name="slider" id="slider1" checked>
                <input type="radio" name="slider" id="slider2">
                <input type="radio" name="slider" id="slider3">

                <div class="labels">
                    <label for="slider1"></label>
                    <label for="slider2"></label>
                    <label for="slider3"></label>
                </div>
                <div class="hero_content">
                    <div class="hero_box slider1_bg">
                        <div class="content">
                            <div class="heading_1"> Unveiling the Art of Immaculate Laundry: AquaGlow Style!</div>
                        </div>
                    </div>
                    <div class="hero_box slider2_bg">
                        <div class="content">
                            <div class="heading_2">Your Laundry, Our Passion: AquaGlow Promise!</div>
                        </div>
                    </div>
                    <div class="hero_box slider3_bg">
                        <div class="content">
                            <div class="heading_3">Illuminate Your Clothes, Lighten Your Life: AquaGlow Marvel!</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!---------------------------------Why Choose Us?------------------------------------->
        <div class="why-choose">
            <div class="left-side">
                <img src="assets/img/Why choose.jpg" alt="why" />
            </div>
            <div class="right-side">
                <h1>Why Choose Us?</h1>
                <p>Searching for a top-tier online laundry management system? Your search ends here with AquaGlow Laundry Service. Renowned for its reliability and outstanding service, AquaGlow offers a seamless and comprehensive solution customized to your unique requirements. Our proficient team is dedicated to assisting you at every step, ensuring you make well-informed decisions about your laundry needs. Choose AquaGlow and experience the ease of managing your laundry online with confidence.</p>
                <a href="aboutUs.html" class="read-more">Read More</a>
            </div>
        </div>
        <!---------------------------------Why Choose Us? end------------------------------------->

        <!---------------------------------Service cards------------------------------------->
        <section class="services-section">
            <h1 class="section-heading">Our Services</h1>
            <p class="section-paragraph">Experience unparalleled convenience and top-notch care with our comprehensive laundry management services, designed to simplify your life and elevate your fabric care experience.</p>
            
            <div class="service-cards">
          
              <div class="service-card">
                <img src="assets/img/clean.jpg" alt="service 1" class="service-image">
                <h2 class="card-heading">Professional Cleaning</h2>
                <div class="card-overlay">
                  <div class="service-logo">
                    
                    <h3>Professional Cleaning</h3>
                  </div>
                  <p>Expert cleaning techniques ensuring thorough cleaning and care for your garments.</p>
                </div>
              </div>
          
              <div class="service-card">
                <img src="assets/img/iron.jpg" alt="service 2" class="service-image">
                <h2 class="card-heading">Ironing and Pressing</h2>
                <div class="card-overlay">
                  <div class="service-logo">
                    
                    <h3>Ironing and Pressing</h3>
                  </div>
                  <p>Precise ironing and pressing services, providing wrinkle-free and polished garments.</p>
                </div>
              </div>
              <div class="service-card">
                <img src="assets/img/fabric.jpg" alt="service 3" class="service-image">
                <h2 class="card-heading">Stain Removal <br> Fabric Restoration</h2>
                <div class="card-overlay">
                  <div class="service-logo">
                    
                    <h3>Stain Removal <br> Fabric Restoration</h3>
                  </div>
                  <p>Specialized treatments to remove even the toughest stains, restoring garments to their original freshness and quality.</p>
                </div>
              </div>
              <div class="service-card">
                <img src="assets/img/deliver.jpg" alt="service 4" class="service-image">
                <h2 class="card-heading">Laundry Pickup and Delivery</h2>
                <div class="card-overlay">
                  <div class="service-logo">
                    
                    <h3>Laundry Pickup and Delivery</h3>
                  </div>
                  <p>Convenient and hassle-free door-to-door service, saving you time and effort.</p>
                </div>
              </div>
            </div>
            <a href="ourservice.html" class="read-more-services">Read More</a>
          </section>
        <!----------------------------------Our services end------------------------------------>
        

        <!----------------------------------news and events------------------------------------>
         <section class="news-events-section">
            <h2 class="section-heading">News and Events</h2>
            <p class="section-description">Stay updated with our latest news and events.</p>

            <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="assets/img/news1.jpg" style="width:100%">
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="assets/img/news3.jpg" style="width:100%">
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="assets/img/news2.jpg" style="width:100%">
    <div class="text">Caption Three</div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
        </section>
        <script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
        
        
        
        
        
       

        <!----------------------------------news and events end------------------------------------>
   
   
   <jsp:include page="footer.jsp"/>
</body>


</html>













