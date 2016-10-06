<%@ page pageEncoding="utf-8"%>	

<div class="main" ng-hide = "layoutSpec">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Camera spech<span class="glyphicon glyphicon-camera pull-right"></span></h1>
        </div>
    </div><!--/.row-->
    <!--Start action button-->
    <div class="row">
        <div class="col-lg-12">
            <button type="button" data-toggle="modal" data-target="#insert-edit-camera-spec" class="btn btn-primary btn-no-radius"><span
                    class="glyphicon glyphicon-plus"></span> Create...
            </button>
            <button type="button"  class="btn btn-primary btn-no-radius" ng-click = "backSpecClicked()">
            	<i class="fa fa-arrow-circle-left" aria-hidden="true"></i> Back
            </button>
        </div>
    </div>
    <hr>
    <!--End action button-->
    <!-- Modal -->
    <div class="modal fade" id="insert-edit-camera-spec" role="dialog">
        <div class="modal-dialog modal-lg">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add spech</h4>
                </div>
                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" required="required">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" required="required">
                        </div>
                        <button type="submit" class="btn btn-primary"><span
                                class="glyphicon glyphicon-floppy-save"></span> Save
                        </button>
                        <button type="submit" class="btn btn-primary"><span
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
                <th>Name</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Canon</td>
                <td>This is description</td>
                <td>
                    <button class="btn btn-success btn-no-radius btn-sm" data-toggle="modal" data-target="#insert-edit-camera-spec">
                        <span class="glyphicon glyphicon-edit"></span> Edit...
                    </button>
                    <button class="btn btn-danger btn-no-radius btn-sm"><span class="glyphicon glyphicon-trash"></span>
                        Delete...
                    </button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div> 