<%@ page pageEncoding="utf-8"%>	



<!-- <style>
    .thumb {
        height: 75px;
        border: 1px solid #000;
        margin: 10px 5px 0 0;
    }
</style> -->

<div class="main" > <!-- ng-hide = "layoutImage" -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Camera Image</h1>
        </div>
    </div><!--/.row-->
    <!--Start action button-->
    <div class="row">
        <div class="col-lg-12">
            <button type="button" ng-click = "addNewImageButtonClicked()" class="btn btn-primary btn-no-radius"><span
                    class="glyphicon glyphicon-plus"></span> Create...
            </button>
            <button type="button"  class="btn btn-primary btn-no-radius" ng-click = "backImageClicked()">
            	<i class="fa fa-arrow-circle-left" aria-hidden="true"></i> Back
            </button>
        </div>
    </div>
    <hr>
    <!--End action button-->
    <!-- Modal -->
    <div class="modal fade" id="insert-edit-camera-image" role="dialog">
        <div class="modal-dialog modal-lg">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Image</h4>
                </div>
                <div class="modal-body">
                    <form role="form">                        
                        <div class="form-group" ng-hide = "ImageTmp.PRO_TMP.ID.substring(1, 2) == 'O' ? true : false">
                            <label for="color">Color</label>
                            <select class="form-control" id="color" ng-model="ImageTmp.COLOR.color_id" ng-options="color.color_id as color.color_name for color in Colors" >
            				</select>
                        </div>
                        
                        <div class="form-group">
                            <label for="files">Image</label>
                            <div id="content" my-filter>
							    <input type="file" name="CameraImage" id="CameraImage" multiple="multiple">
							</div> 
                        </div>
                        
                        <button type="submit" class="btn btn-primary" ng-hide = "!btnModal" ng-click = "insertImage1()"><span
                                class="glyphicon glyphicon-floppy-save"></span> Save
                        </button>
                        <button type="submit" class="btn btn-primary" ng-hide = "btnModal"><span
                                class="glyphicon glyphicon-floppy-save"></span> Update
                        </button>
                        <button type="button" class="btn btn-danger pull-right" data-dismiss="modal"><span
                                class="glyphicon glyphicon-off"></span> Close
                        </button>
                    </form>
                </div>
                <div class="modal-footer">
                </div>
            </div>

        </div>
    </div>
    <!--end model-->
    <div>
        <table class="table table-bordered">
            <thead>
            <tr style="border-bottom:5px solid #1ab188;">
                <th>No</th>
                <th>Image</th>
                <th>Color</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr ng-repeat="Image in Images">
                <td>{{$index}}</td>
                <td>
                    <img style="height:190px;width:190px" ng-src= "http://localhost:9999/{{Image.IMG_URL}}"> <!-- src="${pageContext.request.contextPath}/resources/admin/img/camera.jpg" alt="image" width="50px" height="50px" -->
                </td>
                <td>{{Image.COLOR.color_name}}</td>
                <td>
                    <button class="btn btn-danger btn-no-radius btn-sm" ng-click = "deleteImage1(Image.ID)"><span class="glyphicon glyphicon-trash"></span>
                        Delete...
                    </button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div> 
    