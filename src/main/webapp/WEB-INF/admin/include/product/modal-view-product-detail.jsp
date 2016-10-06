<%@ page pageEncoding="utf-8"%>


<div class="modal fade" id="viewProductDetail" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <form >
          <div class="form-group">
            <label>Code:</label>
            <h4>{{productDetial.CODE}}</h4>                                              
          </div> 
          <div class="form-group">
            <label>Name:</label>
            <h4>{{productDetial.NAME}}</h4>                                            
          </div>
          <div class="form-group">
            <label>Model:</label>
            <h4>{{productDetial.MODEL.model_name}}</h4>                                           
          </div>
          <div class="form-group">
            <label>Brand:</label>
            <h4>{{productDetial.BRAND.brand_name}}</h4>                                        
          </div>
          <div class="form-group">
            <label>Category:</label>
            <h4>{{productDetial.CATEGORY.category_name}}</h4>                                            
          </div>
          <div class="form-group">
            <label>Description:</label>
            <p>{{productDetial.DESCRIPTION}}</p>                                           
          </div>
          <div class="form-group">
            <label>Detail:</label>
            <p>{{productDetial.DETAIL}}</p>                                          
          </div>
        </form>
      </div>
    </div>
  </div>
</div>	