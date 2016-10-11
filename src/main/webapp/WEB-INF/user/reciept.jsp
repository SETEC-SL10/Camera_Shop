<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Reciept</title>
<%@include file="link/user-link.jsp"%>

<style>
.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
</style>
</head>
<body  ng-app="front-App" ng-controller="cartController">


<div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order # 00001</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-12 ">
    				<address>
        			<strong>Shipped To:</strong><br>
    					Som Oun Kim<br>
    					Address: Phnom Penh<br><br><br>
    					<strong>Order Date:</strong><br>
    					March 7, 2014<br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Color</strong></td>
        							<td class="text-center"><strong>Type</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr ng-repeat = "Cart in Carts" ng-init = "calculateGrandTotal(Cart.product.sell_price * Cart.product_qty)">
    								<td class="text-center">{{Cart.product.product_name}}</td>
    								<td class="text-center">{{Cart.product.colore}}</td>
    								<td class="text-center">{{Cart.product.product_id.substring(1, 2) == "O" ? "USED":"NEW"}}}</td>
    								<td class="text-center">{{Cart.product.sell_price | currency}}</td>
    								<td class="text-center">{{Cart.product_qty}}</td>
    								<td class="text-right">{{Cart.product.sell_price * Cart.product_qty | currency}}</td>
    							</tr>
                               
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">{{grandTotal | currency}}</td>
    							</tr>    						
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    <button onclick="window.print();" class="btn btn-primary"> Print</button>
</div>

<%@include file="script/user-script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/user/js/cart.js"></script>
</body>
</html>