<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="${pageContext.request.contextPath}/resources/admin/img/user2-160x160.jpg" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>Alexander Pierce</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <!-- search form -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
      </div>
    </form>
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">MAIN NAVIGATION</li>
      
      <li>
        <a href="/admin/dashboard">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>          
        </a>
      </li>
      
       <li class="treeview">
        <a href="#">
          <i class="fa fa-share"></i> <span>Product</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li>
            <a href="#"><i class="fa fa-circle-o text-yellow"></i> Camera
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="/admin/product/new-camera"><i class="fa fa-circle-o"></i>New Camera</a></li>
              <li><a href="/admin/product/used-camera"><i class="fa fa-circle-o"></i>Used Camera</a></li>
            </ul>
          </li>
          <li>
            <a href="#"><i class="fa fa-circle-o text-yellow"></i> Accessory
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="/admin/product/new-accessory"><i class="fa fa-circle-o"></i>New Accessory</a></li>
              <li><a href="/admin/product/used-accessory"><i class="fa fa-circle-o"></i>Used Accessory</a></li>
            </ul>
          </li>
        </ul>
      </li>
      
      <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Staff</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-green">60</small>
          </span>         
        </a>
      </li>
      
       <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>User Role</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-orange">30</small>
          </span>         
        </a>
      </li>
      
      <li>
        <a href="/admin/customer">
          <i class="fa fa-dashboard"></i> <span>Customer</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-red">20</small>
          </span>         
        </a>
      </li>
      
      <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Supplier</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-yellow">30</small>
          </span>         
        </a>
      </li>
      
       <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Color</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-blue">30</small>
          </span>         
        </a>
      </li>
      
       <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Category</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-black">30</small>
          </span>         
        </a>
      </li>
      
       <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Model</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-gray">30</small>
          </span>         
        </a>
      </li>
      
       <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Brand</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-blue">30</small>
          </span>         
        </a>
      </li>
      
       <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Specification</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-orange">30</small>
          </span>         
        </a>
      </li>
      
      
      
      
      
      <li>
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>POS</span>          
        </a>
      </li>
      
      <li class="treeview">
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>One level</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li>
          	<a href="#"><i class="fa fa-circle-o"></i> 
          		VB
	          	<span class="pull-right-container">
	            	<small class="label pull-right bg-green">27</small>
	            </span>
          	</a>          	
          </li>
          <li>
          	<a href="#"><i class="fa fa-circle-o"></i> 
          		Java
	          	<span class="pull-right-container">
	            	<small class="label pull-right bg-green">69</small>
	            </span>
          	</a>          	
          </li>
        </ul>
      </li>
      
      <li class="treeview">
        <a href="#">
          <i class="fa fa-share"></i> <span>three level</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="#"><i class="fa fa-circle-o text-red"></i> Level One</a></li>
          <li>
            <a href="#"><i class="fa fa-circle-o text-yellow"></i> Level One
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
              <li>
                <a href="#"><i class="fa fa-circle-o"></i> Level Two
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> Level One</a></li>
        </ul>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>