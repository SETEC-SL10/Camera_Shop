<%@ page pageEncoding="utf-8"%>

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
    
<div class="container">
    <div class="row">
    	<div class="col-md-12">
	    	<button class="btn btn-primary" ng-click="showImportPro()"><span><i class="fa fa-plus" aria-hidden="true"></i> </span>Add New</button>
	    	<br><br>
    		<div class="panel panel-default">    		
    			<!-- <div class="panel-heading">
    				<h3 class="panel-title"><strong>Import</strong></h3>`
    				<button class="btn btn-primary" ng-click="showImportPro()"><span><i class="fa fa-plus" aria-hidden="true"></i> </span>Add New</button>
    			</div> -->
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Color</strong></td>
        							<td class="text-center"><strong>Type</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>SN</strong></td>
        							<td class="text-center"><strong>Qty</strong></td>
        							<td class="text-right"><strong>Total</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr ng-repeat = "Cart in Carts" ng-init = "calculateGrandTotal(Cart.product.sell_price * Cart.product_qty)">
    								<td class="text-center">a</td>
    								<td class="text-center">b</td>
    								<td class="text-center">c</td>
    								<td class="text-center">d</td>
    								<td class="text-center">e</td>
    								<td class="text-center">f</td>
    								<td class="text-right">g</td>
    							</tr>
                               
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">13233</td>
    							</tr>    						
    						</tbody>
    					</table>
    				</div>
    				<button class="btn btn-primary"><span><i class="fa fa-save" aria-hidden="true"></i> </span>Save</button>
    			</div>
    		</div>
    	</div>
    </div>
</div>