<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    


<style>


/* Slideshow container */
.slideshow-container {
 
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
 * color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor:pointer;
  height: 13px;
  width: 13px;
  margin: 0 2px;
 * background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
 * background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2s;
  animation-name: fade;
  animation-duration: 2s;
}

@-webkit-keyframes fade {
  from {opacity: .1}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .1}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="${pageContext.request.contextPath}/resources/user/img/Slide-01.png" alt="" style="width:100%"/>
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="${pageContext.request.contextPath}/resources/user/img/Slide-02.png" alt="" style="width:100%"/>
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="${pageContext.request.contextPath}/resources/user/img/Slide-03.png" alt="" style="width:100%"/>
  <div class="text">Caption Three</div>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
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

//for automatic slideshow
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    setTimeout(showSlides, 4000); // Change image every 2 seconds
}

</script>



    
    
    
    
    
    
<%-- <div >
			
			<ul id="slideBanner">			
				<li><a href="#"><img class=" " src="${pageContext.request.contextPath}/resources/user/img/Slide-01.png" alt=""></a>
				</li>
				<li><a href="#"><img class=" " src="${pageContext.request.contextPath}/resources/user/img/Slide-02.png" alt=""></a>
				</li>
				<li><a href="#"><img class=" " src="${pageContext.request.contextPath}/resources/user/img/Slide-03.png" alt=""></a>
				</li>
				<li><a href="#"><img class="" src="${pageContext.request.contextPath}/resources/user/img/Slide-04.png" alt=""></a>
				</li>
            </ul>
            		<script type="text/javascript">
		$(window).load(function() {
			$("#slideBanner").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>  --%>
	<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/jquery.flexisel.js"></script> --%>
<!-- </div> -->











    
<%-- <div class="banner ">
	<div class="container">
		<div class="banner-main">
			<div class="col-md-6 banner-left">
				<a href="single.html"><img src="${pageContext.request.contextPath}/resources/user/img/ba.png" alt="" class="img-responsive"></a>
			</div>
			<div class="col-md-6 banner-right simpleCart_shelfItem">
				<span class="bann-heart"> </span>
				<h2>Handbags</h2>
				<h1>Sed perspiciatis unde</h1>
				<h5 class="item_price">$200.00</h5>
				<ul class="bann-small-img">
					<li><a href="single.html"><img src="${pageContext.request.contextPath}/resources/user/img/b1.jpg"></a></li>
					<li><a href="single.html"><img src="${pageContext.request.contextPath}/resources/user/img/b2.jpg"></a></li>
				</ul>
				<h6>Size Charts</h6>
				<ul class="bann-btns">
				<li><select class="bann-size">
					<option value="select your location">Size</option>
					<option value="saab">Small</option>
					<option value="fiat">Medium</option>
					<option value="audi">Large</option>
				</select>
				</li>
				<li><a href="#" class="item_add">Add To Cart</a></li>
               </ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div> --%>