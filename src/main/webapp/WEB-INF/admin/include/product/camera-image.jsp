<%@ page pageEncoding="utf-8"%>	

<style>
    .thumb {
        height: 75px;
        border: 1px solid #000;
        margin: 10px 5px 0 0;
    }
</style>

<div class="main">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Camera Image</h1>
        </div>
    </div><!--/.row-->
    <!--Start action button-->
    <div class="row">
        <div class="col-lg-12">
            <button type="button" data-toggle="modal" data-target="#insert-edit-camera-image" class="btn btn-primary btn-no-radius"><span
                    class="glyphicon glyphicon-plus"></span> Create...
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
                    <h4 class="modal-title">Add spech</h4>
                </div>
                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="files">Image</label>
                            <input type="file" id="files" name="files[]" multiple />
                            <output id="list"></output>
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" required="required">
                        </div>
                        <div class="form-group">
                            <label for="color">Color</label>
                            <select name="color" id="color" class="form-control">
                                <option value="1">Red</option>
                                <option value="2">Black</option>
                            </select>
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
                <th>Image</th>
                <th>Description</th>
                <th>Color</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>
                    <img src="${pageContext.request.contextPath}/resources/admin/img/camera.jpg" alt="image" width="50px" height="50px">
                </td>
                <td>This is description</td>
                <td>Red</td>
                <td>
                    <button class="btn btn-success btn-no-radius btn-sm" data-toggle="modal" data-target="#insert-edit-camera-image">
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

<script>
    function handleFileSelect(evt) {
        var files = evt.target.files; // FileList object

        // Loop through the FileList and render image files as thumbnails.
        for (var i = 0, f; f = files[i]; i++) {

            // Only process image files.
            if (!f.type.match('image.*')) {
                continue;
            }

            var reader = new FileReader();

            // Closure to capture the file information.
            reader.onload = (function(theFile) {
                return function(e) {
                    // Render thumbnail.
                    var span = document.createElement('span');
                    span.innerHTML = ['<img class="thumb" src="', e.target.result,
                        '" title="', escape(theFile.name), '"/>'].join('');
                    document.getElementById('list').insertBefore(span, null);
                };
            })(f);

            // Read in the image file as a data URL.
            reader.readAsDataURL(f);
        }
    }

    document.getElementById('files').addEventListener('change', handleFileSelect, false);
</script>