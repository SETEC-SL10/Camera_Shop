<%@ page pageEncoding="utf-8"%>

<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/sweetalert/js/sweetalert-dev.js"></script>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/sweetalert/js/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/angular/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/angular/angular-cookies.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/angular/App.js"></script>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/easing.js"></script>


<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
	
<script type="text/javascript">
$(document).ready(function() {
	/*
	var defaults = {
 			containerID: 'toTop', // fading element id
		containerHoverID: 'toTopHover', // fading element hover id
		scrollSpeed: 1200,
		easingType: 'linear' 
		};
	*/
	
	$().UItoTop({ easingType: 'easeOutQuart' });
	
});
</script>