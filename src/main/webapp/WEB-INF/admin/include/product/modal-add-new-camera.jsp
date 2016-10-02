<%@ page pageEncoding="utf-8"%>

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
            <label for="code">Camera Code:</label>
            <input type="text" class="form-control" id="code">
          </div>
          <div class="form-group">
            <label for="name">Camera Name:</label>
            <input type="text" class="form-control" id="name">
          </div>
          <div class="form-group">
            <label for="warranty">Warranty:</label>
            <input type="date" class="form-control" id="warranty">
          </div>
          <div class="form-group">
           <!--  <label for="description">Description:</label>
            <textarea class="form-control" rows="5" id="description"></textarea> -->
            
            <!-- <div class="box">
            <div class="box-header">
              <h3 class="box-title">Bootstrap WYSIHTML5
                <small>Simple and fast</small>
              </h3>
              tools box
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              /. tools
            </div>
            /.box-header
            <div class="box-body pad">
              <form>
                <textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
              </form>
            </div>
          </div> -->
          
          
          <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">CK Editor
                <small>Advanced and full of features</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              <form>
                    <textarea id="editor1" name="editor1" rows="10" cols="80">
                                            This is my textarea to be replaced with CKEditor.
                    </textarea>
              </form>
            </div>
          </div>
            
          </div>
          <div class="form-group">
            <label for="detail">Detail:</label>
            <textarea class="form-control" rows="5" id="detail"></textarea>
          </div>
          <div class="form-group">
            <label for="model">Model:</label>
            <select class="form-control" id="model" ng-model="Model" ng-options="model.model_name for model in Models">
            </select>
          </div>
          <div class="form-group">
            <label for="brand">Brand:</label>
            <select class="form-control" id="brand" ng-model="Brand" ng-options="brand.brand_name for brand in Brands">
            </select>
          </div>
          <div class="form-group">
            <label for="category">Category:</label>
            <select class="form-control" id="category" ng-model="Category" ng-options="category.category_name for category in Categorys">
            </select>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-primary">Insert</button>
            <button type="button" class="btn btn-warning">Update</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>	