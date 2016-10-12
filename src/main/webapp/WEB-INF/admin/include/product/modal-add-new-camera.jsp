<%@ page pageEncoding="utf-8"%>

<style>
	.cke_chrome {
   * display: none;
}
</style>

<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <form >
          <div class="form-group">
            <label for="code">Product Code:</label>
            <input type="text" ng-model = "ProductTmp.CODE" class="form-control" id="code">
          </div>
          <div class="form-group">
            <label for="name">Product Name:</label>
            <input type="text" ng-model = "ProductTmp.NAME" class="form-control" id="name">
          </div>
          <!-- <div class="form-group">
            <label for="warranty">Warranty:</label>
            <input type="date" class="form-control" id="warranty">
          </div> -->
          <div class="form-group">
            <label for="description">Description:</label>
            <!-- We not use this but need to add it -->
            <form >
                  <textarea id="Description"  class="form-control" ck-editor ng-model="ProductTmp.DESCRIPTION" placeholder="Description" name="Description"></textarea>
            </form>
            
            <!-- We use this -->
            <!-- <form>
              <textarea class="textarea form-control" ng-model="ProductTmp.DESCRIPTION" placeholder="Description"></textarea> 
            </form> -->
          </div>
          <div class="form-group">
            <label for="detail">Detail:</label>
            <!-- We not use this but need to add it -->
            <form >
                  <textarea id="Detail" name="Detail" class="form-control" ng-model = "ProductTmp.DETAIL" placeholder="Detail"></textarea>
            </form>
            <!--  -->
            
            <!-- We use this -->
            <!-- <form>
              <textarea class="textarea form-control" ng-model = "ProductTmp.DETAIL" placeholder="Detail"></textarea>
            </form> -->
          </div>
          <div class="form-group">
            <label for="model">Model:</label>
            <select class="form-control" id="model" ng-model="Model.model_id" ng-options="model.model_id as model.model_name for model in Models"> <!-- ng-options="model as model.model_name for model in Models" -->
            	<!-- <option ng-repeat="model in Models" value="{{model}}">{{model.model_name}}</option> -->
            </select>
          </div>
          <div class="form-group">
            <label for="brand">Brand:</label>
            <select class="form-control" id="brand" ng-model="Brand.brand_id" ng-options="brand.brand_id as brand.brand_name for brand in Brands" >
            </select>
          </div>
          <div class="form-group">
            <label for="category">Category:</label>
            <select class="form-control" id="category" ng-model="Category.category_id" ng-options="category.category_id as category.category_name for category in Categorys" >
            </select>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-primary" ng-click = "insertButtonClicked()" ng-hide = "!btnModal">Insert</button>
            <button type="button" class="btn btn-warning" ng-click = "updateButtonClicked()" ng-hide = "btnModal">Update</button>
          </div>
        </form>
      </div>
<!--       <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
    </div>
  </div>
</div>	