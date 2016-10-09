<%@ page pageEncoding="utf-8"%>


<div class="modal fade" id="addSN" role="dialog">
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
            <input type="text" ng-model = "ImageTmp.PRO_SN" class="form-control" id="code">
          </div>
		<div class="form-group">
			<button type="button" class="btn btn-default" data-dismiss="modal" ng-click = "addImageClicked1()">OK</button>
		</div>
 		  </form>
      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>	