<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<%@include file="link/user-link.jsp"%>

<!-- Multi Step -->
<style type="text/css">

.stepwizard-step p {
    margin-top: 10px;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 100%;
    position: relative;
    margin-bottom:20px;
}
.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
}
#step-4 img
{
	max-width:50px;
	max-height:50px;
}
</style>
</head>
<body ng-app="cartApp" ng-controller="cartController">

<%@include file="include/header.jsp"%>



<div class="checkoutForm container">
  
<div class="stepwizard">
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
        <p>Shipping Address</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
        <p> Order Review </p>
      </div>
    </div>
  </div>
  
   <form >
    <div class="row setup-content" id="step-1">
       <div class="form-group col-md-7">
             <label class="control-label">First Name</label>
            <input  maxlength="100" type="text" class="form-control" placeholder="Username or Email"  />
            <br>
            
             <label class="control-label">Last Name</label>
            <input  maxlength="100" type="text" class="form-control" placeholder="Username or Email"  />
            <br>
            
            <label class="control-label">Gender</label>
            <input  maxlength="100" type="text" class="form-control" placeholder="Username or Email"  />
            <br>
            
             <label class="control-label">Phone</label>
            <input  maxlength="100" type="text" class="form-control" placeholder="Username or Email"  />
            <br>
            
            
            <label class="control-label">Email</label>
            <input  maxlength="100" type="email" class="form-control" placeholder="Username or Email"  />
            <br>
            
             <label class="control-label">Address</label>
             <textarea name="" id="" cols="30" rows="10" class="form-control" placeholder="Username or Email"></textarea>
            <br>
                       
            <br>
            <button class="btn btn-primary nextBtn btn-lg  " type="button" >Next</button>
       </div>
    </div>
    
    
    <div class="row setup-content" id="step-2">
     	<div class="form-group">
    		
    		<div class="ckeckout">
		<div class="container">
			<div class="ckeckout-top">
				<div class=" cart-items heading">
			 		<!-- <h1>My Cart ({{Carts.length}})</h1> -->
					<div class="in-check" >
						<ul class="unit">
							<li style="width:100px;"><span>Item</span></li>
							<li style="width:400px;"><span>Product Name</span></li>	
							<li style="width:100px;"><span>Color</span></li>	
							<li style="width:100px;"><span>Unit Price</span></li>
							<li style="width:100px;"><span>Type</span></li>
							<li style="width:150px;"><span >Quantity</span></li>
							<li style="width:100px;"><span >Total</span></li>
							<div class="clearfix"> </div>
						</ul>
						<ul class="cart-header simpleCart_shelfItem" ng-repeat = "Cart in Carts" ng-init = "calculateGrandTotal(Cart.product.sell_price * Cart.product_qty)">
							<div class="close1" ng-click = "deleteCart($index)"> </div>
							<li class="ring-in" style="width:100px;">
								<a class="cbp-vm-image" href="/detail?p={{Cart.product.product_id}}&c={{Cart.product.color.color_id}}&s={{Cart.product.serial}}">
									<img ng-src="http://localhost:9999/{{Cart.product.images[0].image_url}}" class="img-responsive" style="width:80px;hieght:80px" alt="">
								</a>
							</li>
							<li style="width:400px;">
								<a href="/detail" ><span>{{Cart.product.product_name}}</span></a>
							</li>
							<li style="width:100px;"><span ng-style = "set_color(Cart.product.color)">{{Cart.product.color.color_name}}</span></li>
							<li style="width:100px;"><span class="item_price">{{Cart.product.sell_price | currency}}</span></li>
							<li style="width:100px;"><span style="color:red;">{{Cart.product.product_id.substring(1, 2) == "O" ? "USED":"NEW"}}</span></li>
							<li style="width:150px;">
								<span ng-hide = "checkProductType(Cart.product)">
									<form>
									   <input type="button" ng-click="updateCartQty(Cart, -1)" value="-" id="decrease" / >
									   <input type="number" class = "numberQty" ng-change = "changeValueQty(Cart)" ng-model = "Cart.product_qty" size="20" />
									   <input type="button" ng-click="updateCartQty(Cart, 1)" value="+" id="increase" / >
									</form>
								</span>
								<span ng-hide = "!checkProductType(Cart.product)">{{Cart.product_qty}}</span>
							</li>
							<li style="width:100px;"><span >{{Cart.product.sell_price * Cart.product_qty | currency}}</span> </li>		
							<div class="clearfix"> </div>
						</ul>
						
						<!-- <span ng-bind="calculateGrandTotal(Cart.product.sell_price * Cart.product_qty)"></span> -->
					</div>
					<div id="TotalSumarry">
						<div class="col-md-7"></div>
						<div class="well col-md-5">
							<h1>Grand Total: <span class="alignRight">{{grandTotal | currency}}</span></h1> 
							<!-- <h4>Shipping: <span class="alignRight">sdfsdfwerewr</span></h4>	
							<h4>Grand Total: <span class="alignRight">$2434</span></h4>		 -->
						</div>
						<a href="/checkout" class="alignRight btn btn-primary" > Process Checkout</a>
					</div>
				</div>  
			</div> 
		</div>
	</div>
    		
    		<br>
            <a class="btn btn-primary nextBtn btn-lg" type="button" href="/reciept">Place Order</a>
       </div>
    </div>
    


    
  </form> 
  
</div>




<%@include file="include/footer.jsp"%>
<%@include file="script/user-script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/user/js/cart.js"></script>
<script type="text/javascript">
$(document).ready(function () {
  var navListItems = $('div.setup-panel div a'),
          allWells = $('.setup-content'),
          allNextBtn = $('.nextBtn');

  allWells.hide();

  navListItems.click(function (e) {
      e.preventDefault();
      var $target = $($(this).attr('href')),
              $item = $(this);

      if (!$item.hasClass('disabled')) {
          navListItems.removeClass('btn-primary').addClass('btn-default');
          $item.addClass('btn-primary');
          allWells.hide();
          $target.show();
          $target.find('input:eq(0)').focus();
      }
  });

  allNextBtn.click(function(){
      var curStep = $(this).closest(".setup-content"),
          curStepBtn = curStep.attr("id"),
          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
          curInputs = curStep.find("input[type='text'],input[type='url']"),
          isValid = true;

      $(".form-group").removeClass("has-error");
      for(var i=0; i<curInputs.length; i++){
          if (!curInputs[i].validity.valid){
              isValid = false;
              $(curInputs[i]).closest(".form-group").addClass("has-error");
          }
      }

      if (isValid)
          nextStepWizard.removeAttr('disabled').trigger('click');
  });

  $('div.setup-panel div a.btn-primary').trigger('click');
});
</script>
</body>
</html>