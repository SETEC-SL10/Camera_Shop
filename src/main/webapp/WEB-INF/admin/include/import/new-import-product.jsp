<%@ page pageEncoding="utf-8"%>

<style>
.importProduct{
	*margin-top: 10px;
	width: 50%;
	background-color: white;
	padding: 20px;
}
</style>
<br>
<div class="container importProduct">
	 <form >
	 	<button class="btn btn-primary" ng-click="showGetPro()"><i class="fa fa-get-pocket" aria-hidden="true"></i> Select Product</button>
	 	<br><br>
         <div class="form-group" ng-hide = "ImageTmp.PRO_TMP.ID.substring(1, 2) == 'O' ? true : false">
              <label for="color">Color</label>
              <select class="form-control" id="color" ng-model="ImageTmp.COLOR.color_id" ng-options="color.color_id as color.color_name for color in Colors" >
				</select>
          </div>
         
         <div class="form-group">
           <label>Cost:</label>
           <input type="text" ng-model = "ProductTmp.NAME" class="form-control">
         </div>
         
         <div class="form-group">
           <label>Serial:</label>
           <input type="text" ng-model = "ProductTmp.NAME" class="form-control">
         </div>
         
         <div class="form-group">
           <label>Price:</label>
           <input type="text" ng-model = "ProductTmp.NAME" class="form-control">
         </div>
         
         <button class="btn btn-primary" ng-click="showImportTempList()"><i class="fa fa-get-pocket" aria-hidden="true"></i>Add To List</button>
         
       </form>
</div>







