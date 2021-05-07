<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <!-- basic -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- mobile metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- site metas -->
  <title>MuscleMuseum</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- bootstrap css -->
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <!-- style css -->
  <link rel="stylesheet" href="/css/style.css">
  <!-- Responsive-->
  <link rel="stylesheet" href="/css/responsive.css">  
  <!-- Scrollbar Custom CSS -->
  <link rel="stylesheet" href="/css/jquery.mCustomScrollbar.min.css">
  <!-- Tweaks for older IEs-->
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <!-- Javascript files-->
  <script src="/js/jquery.min.js"></script>
  <script src="/js/popper.min.js"></script>
  <script src="/js/bootstrap.bundle.min.js"></script>
  <script src="/js/jquery-3.0.0.min.js"></script>
  <script src="/js/plugin.js"></script>
  <script src="/js/summernote.min.js"></script>
  <!-- sidebar -->
  <script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="/js/custom.js"></script>
  <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>

</head>
<!-- body -->

<body class="main-layout">
  <!-- loader  -->
  <div class="loader_bg">
    <div class="loader"><img src="/img/loading.gif" alt="#" /></div>
  </div>
  <!-- end loader -->
  <!-- header -->
  <header>
    <!-- header inner -->
    <div class="header-top">
      <div class="header">
        <div class="container-fluid">
          <div class="row">
            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-3 col logo_section">
              <div class="full">
                <div class="center-desk">
                  <div class="logo">
                    <a href="/"><img src="/img/logo.png" alt="#" /></a>
                  </div>
                </div>
              </div>
            </div>
            <c:choose>
            
            <c:when test="${empty login.user_id }">
            <!-- 세션정보 없을 시 Navbar -->
            <div class="col-xl-10 col-lg-8 col-md-8 col-sm-9">
               <div class="menu-area">
                <div class="limit-box">
                  <nav class="main-menu ">
                    <ul class="menu-area-main">
                     
                      <li class="active"> <a href="/">Home</a> </li>
                      <li> <a href="#about">About</a> </li>
                      <li> <a href="#vegetable">MuscleMuseum</a> </li>
                      <li> <a href="#testimonial">Developer</a> </li>
                      <li> <a href="#contact">Contact Us</a> </li>
                     <li> <a href="#"><img src="/img/icon_b.png" alt="#" /></a></li>
                     </ul>
                   </nav>
                 </div>
               </div>
              </div>
              <!-- 세션정보 없을 시 Navbar -->
              </c:when>
              <c:otherwise>
              <!-- 세션정보 있을 시 Navbar -->
              <div class="col-xl-10 col-lg-8 col-md-8 col-sm-9">
               <div class="menu-area">
                <div class="limit-box">
                  <nav class="main-menu ">
                    <ul class="menu-area-main">
	                     <li> <input type="text" placeholder="검색" id='search2-Text' style="border-radius: 10px;" autocomplete="off">
	                       </li>
                      <li class="active"> <a href="/">Home</a> </li>
                      <li> <a href="#">Message</a> </li>
                      <li> <a href="#">Relation</a> </li>
                      <li> <a href="#">MyFeed</a> </li>
                      <li> <a href="/Logout">Logout</a> </li>
                     
                     <li> <a href="#"><img src="/img/icon_b.png" alt="#" /></a></li>
                     </ul>
                   </nav>
                 </div>
               </div>
              </div>
              <!-- 세션정보 있을 시 Navbar -->
              </c:otherwise>
              </c:choose>
              
           </div>
         </div>
       </div>
     </div>
     <!-- end header inner -->
	</header>
     <!-- end header -->
     <script>
		$(function () {
			//인풋창에서 Enter치면 mentorSearch 메소드 실행
			$("#search2-Text").keydown(function(key){
				if(key.keyCode == 13){
					allSearch();
				}
			});
		});     
		function allSearch () {
			var searchText = $('#search2-Text').val();
			searchText1 = encodeURI(searchText);	// 한글 인코딩
			if(searchText1.length==0){
				alert('검색어를 입력해 주세요');
			} else {
				//alert(searchText); //검색값+버튼액션 확인
				var url = '/AllSearch?query='+searchText1;
				$(location).attr('href',url);
			}
		}
     </script>
