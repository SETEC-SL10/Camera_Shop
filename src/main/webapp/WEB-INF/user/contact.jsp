<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<%@include file="link/user-link.jsp"%>
</head>
<body >

<%@include file="include/header.jsp"%>


<section id="aa-contact" style="background-color:#cccccc;">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="aa-contact-area">
           <div class="aa-contact-top">
             <h2>We are wating to assist you..</h2>
           </div>
           <!-- contact map -->
           <div class="aa-contact-map">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d977.1937867540306!2d104.89455085756978!3d11.567970593123036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31095173761d4a53%3A0xcd09ff2f4d326e3f!2sSETEC+Institute!5e0!3m2!1sen!2skh!4v1467626836529" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen>           	
           </iframe>
           </div>
           <!-- Contact address -->
           <div class="aa-contact-address">
             <div class="row">
               <div class="col-md-8">
                 <div class="aa-contact-address-left">
                   <form class="comments-form contact-form" action="">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">                        
                          <input type="text" placeholder="Your Name" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">                        
                          <input type="email" placeholder="Email" class="form-control">
                        </div>
                      </div>
                    </div>
                     <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">                        
                          <input type="text" placeholder="Subject" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">                        
                          <input type="text" placeholder="Company" class="form-control">
                        </div>
                      </div>
                    </div>                  
                     
                    <div class="form-group">                        
                      <textarea class="form-control" rows="3" placeholder="Message"></textarea>
                    </div>
                    <button class="aa-secondary-btn">Send</button>
                  </form>
                 </div>
               </div>
               <div class="col-md-4">
                 <div class="aa-contact-address-right">
                   <address>
                     <h4>DailyShop</h4>
                     <p></p>
                     <p><span class="fa fa-home"></span>Russia Blv, Phnom Penh, Cambodia</p>
                     <p><span class="fa fa-phone"></span>+ 855 12 345 678</p>
                     <p><span class="fa fa-envelope"></span>Email: support@slcamten.com</p>
                   </address>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>

<!-- <div class="contact">
	<div class="container">
		<div class="contact-main">
			<div class="contact-top">
				<h1>Contact Us</h1>
				<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections Cicero are reproduced.</p>
			</div>
			<div class="col-md-6 contact-left">
				<h2>Information</h2>
				<h4>Cicero are also reproduced in their exact original</h4>
				<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English.</p>
			    <ul>
			    	<li><span class="glyphicon glyphicon-map-marker" aria-hidden="true"> </span>Professor at Hampden-Sydney</li>
			    	<li><span class="glyphicon glyphicon-phone" aria-hidden="true"> </span>+1284 485 978</li>			    	
			    	<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"> </span><a href="mailto:info@example.com">@example.com</a></li>
			    </ul>
			</div>
			<div class="col-md-6 contact-right">
				<h3>Feedback</h3>
			<form>
				<input type="text" placeholder="Name" required="">
				<input type="text" placeholder="Email" required="">
				<textarea placeholder="Message" required=""></textarea>
				<input type="submit" value="send">
			</form>
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
contact end here
map start here
<div class="map">
	<div class="container">
	 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d236177.45395756562!2d114.09766082742951!3d22.343329098434406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3403e2eda332980f%3A0xf08ab3badbeac97c!2sHong+Kong!5e0!3m2!1sen!2sin!4v1454744201986"> </iframe>
	</div>
</div>
map end here -->

<%@include file="include/footer.jsp"%>
<%@include file="script/user-script.jsp"%>
</body>
</html>