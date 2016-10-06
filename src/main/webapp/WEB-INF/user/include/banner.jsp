<%@ page pageEncoding="utf-8"%>

<style>
#slider1_container{
	visibility: hidden;
	position: relative;
	margin: 0px;
	width: 100%;
	height: 442px;
	overflow: hidden;
}
.mySlideBlock{
	cursor: move;
	position: absolute;
	/* left: 0px;
	top: 0px;  */
	width: 100%; 
	height: 442px;
	overflow: hidden;
}


</style>

<div id="slider1_container">
    <div u="slides" class="mySlideBlock">
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-01.jpg" />
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-02.jpg" />
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-03.jpg" />
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-04.jpg"/>
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-05.jpg" />
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-06.png" />
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-07.png"/>
        </div>
        <div>
            <img u="image" src2="${pageContext.request.contextPath}/resources/user/img/Slider-08.png" />
        </div>
    </div>
    
    
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url(${pageContext.request.contextPath}/resources/plugins/jssorSlider/img/slideBtn.png) no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }
    </style>
    
    
    <!-- bullet navigator container -->
    <div u="navigator" class="jssorb05" style="bottom: 16px; right: 6px;">
        <!-- bullet navigator item prototype -->
        <div u="prototype"></div>
    </div>


    <!--#endregion Bullet Navigator Skin End -->
    
    <!--#region Arrow Navigator Skin Begin -->
    <!-- Help: http://www.jssor.com/tutorial/set-arrow-navigator.html -->
    
    
    <style>
        /* jssor slider arrow navigator skin 11 css */
        /*
        .jssora11l                  (normal)
        .jssora11r                  (normal)
        .jssora11l:hover            (normal mouseover)
        .jssora11r:hover            (normal mouseover)
        .jssora11l.jssora11ldn      (mousedown)
        .jssora11r.jssora11rdn      (mousedown)
        */
        .jssora11l, .jssora11r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 37px;
            height: 37px;
            cursor: pointer;
            background: url(${pageContext.request.contextPath}/resources/plugins/jssorSlider/img/nextPre.png) no-repeat;
            overflow: hidden;
        }
        .jssora11l { background-position: -11px -41px; }
        .jssora11r { background-position: -71px -41px; }
        .jssora11l:hover { background-position: -131px -41px; }
        .jssora11r:hover { background-position: -191px -41px; }
        .jssora11l.jssora11ldn { background-position: -251px -41px; }
        .jssora11r.jssora11rdn { background-position: -311px -41px; }
    </style>
    
    
    <!-- Arrow Left -->
    <span u="arrowleft" class="jssora11l" style="top: 123px; left: 8px;">
    </span>
    <!-- Arrow Right -->
    <span u="arrowright" class="jssora11r" style="top: 123px; right: 8px;">
    </span>
    <!--#endregion Arrow Navigator Skin End -->
</div>



