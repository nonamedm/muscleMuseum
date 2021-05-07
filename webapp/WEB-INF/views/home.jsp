<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

  <!-- header -->
  <%@include file="layout/header.jsp"%>
  <c:choose>
  <c:when test="${empty login.user_id }">
     <section class="slider_section">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">

            <div class="container-fluid padding_dd">
              <div class="carousel-caption">
                <div class="row">
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="text-bg">
                     <span>Welcome To MuscleMuseum</span>
                      <h1>To get Muscle with People</h1>
                      <p> 회원들끼리 마음껏 근육자랑을 하셔도 되는 곳입니다. 멋진 근육과 포즈를 자랑하세요!</p>
                <button class="Join_btn">회원가입</button><button class="Login_btn">로그인</button>
                    </div>
                  </div>
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="images_box">
                      <figure><img src="/img/dwayne.jpg"></figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">

            <div class="container-fluid padding_dd">
              <div class="carousel-caption">

                <div class="row">
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="text-bg">
                      <span>Welcome To MuscleMuseum</span>
                      <h1>To get Muscle with People</h1>
                      <p> 회원들끼리 마음껏 근육자랑을 하셔도 되는 곳입니다. 멋진 근육과 포즈를 자랑하세요!</p>
                <button class="Join_btn">회원가입</button><button class="Login_btn">로그인</button>
                    </div>
                  </div>

                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="images_box">
                      <figure><img src="/img/john.png"></figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>


          <div class="carousel-item">

            <div class="container-fluid padding_dd">
              <div class="carousel-caption ">
                <div class="row">
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="text-bg">
                     <span>Welcome To MuscleMuseum</span>
                      <h1>To get Muscle with People</h1>
                      <p> 회원들끼리 마음껏 근육자랑을 하셔도 되는 곳입니다. 멋진 근육과 포즈를 자랑하세요!</p>
                <button class="Join_btn">회원가입</button><button class="Login_btn">로그인</button>
                    </div>
                  </div>
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="images_box">
                      <figure><img src="/img/jason.jpg"></figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</section>
</div>
</header>



<!-- about  -->
<div id="about" class="about">
  <div class="container-fluid">
    <div class="row">
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="about-box">
          <h2>About us</h2>
          <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages andIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many</p>
          <a href="Javascript:void(0)">Read more</a>
        </div>
      </div>
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 padding_rl">
        <div class="about-box_img">
          <figure><img src="/img/about.jpg" alt="#" /></figure>
        </div>
      </div>
    </div>

  </div>
</div>
<!-- end abouts -->



<!-- vegetable -->
<div id="vegetable" class="vegetable">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div  class="titlepage">
          <h2> Muscle <strong class="llow">Museum</strong> </h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 ">
        <div class="vegetable_shop">
          <h3>근육박물관이 뭘까요?</h3>
          <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages andIt is a long established fact that a reader will be distracted </p>
        </div>
      </div>
       <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 ">
        <div class="vegetable_img">
         <figure><img src="/img/v1.jpg" alt="#"/></figure>
         <span>01</span>
        </div>
      </div>
       <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 ">
        <div class="vegetable_img margin_top">
         <figure><img src="/img/v2.jpg" alt="#"/></figure>
         <span>02</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end vegetable -->


   <!-- clients -->
    <div id="testimonial" class="clients">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Developer</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clients_red">
        <div class="container">
            <div id="testimonial_slider" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#testimonial_slider" data-slide-to="0" class=""></li>
                    <li data-target="#testimonial_slider" data-slide-to="1" class="active"></li>
                    <li data-target="#testimonial_slider" data-slide-to="2" class=""></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <div class="testomonial_section">

                            <div class="full testimonial_cont">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 pa_right">
                                        <div class="testomonial_img">
                                            <figure><img src="/img/profile.jpg" alt="#"/></figure>
                                            <i><img src="/img/test_con.png" alt="#"/></i>
                                        </div>
                                    </div>
                                    <div class="col-xl-9 col-lg-9 col-md-9 col-sm-12 pa_left">
                                        <div class="cross_inner">
                                            <h3>서티브잡스<br><strong class="ornage_color">개발자</strong></h3>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and
                                          
                                            </p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item active">

                        <div class="testomonial_section">
                            <div class="full center">
                            </div>
                            <div class="full testimonial_cont ">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 pa_right">
                                        <div class="testomonial_img">
                                            <figure><img src="/img/profile.jpg" alt="#"/></figure>
                                            <i><img src="/img/test_con.png" alt="#"/></i>
                                        </div>
                                    </div>
                                    <div class="col-xl-9 col-lg-9 col-md-9 col-sm-12 pa_left">
                                        <div class="cross_inner">
                                            <h3>서티브잡스<br><strong class="ornage_color">개발자</strong></h3>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and
                                              
                                            </p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="carousel-item">
                        <div id="testomonial" class="testomonial_section">
                            <div class="full center">
                            </div>
                            <div class="full testimonial_cont ">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 pa_right">
                                        <div class="testomonial_img">
                                            <figure><img src="/img/profile.jpg" alt="#"/></figure>
                                            <i><img src="/img/test_con.png" alt="#"/></i>
                                        </div>
                                    </div>
                                    <div class="col-xl-9 col-lg-9 col-md-9 col-sm-12 pa_left">
                                        <div class="cross_inner">
                                            <h3>서티브잡스<br><strong class="ornage_color">개발자</strong></h3>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and
                                              
                                            </p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
  
    <!-- end clients -->


<!-- contact -->
<div id="contact" class="contact">
  <div class="container">
   <div class="row">
     <div class="col-md-12">
                <div class="titlepage">
                  <h2>Contact <strong class="llow">us</strong></h2>
                </div>
   </div>

</div>
    <div class="white_color">
      <div class="row">

        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
           <form class="contact_bg">
            <div class="row">
              <div class="col-md-12">
              
                <div class="col-md-12">
                  <input class="contactus" placeholder="Your Name" type="text" name="Your Name">
                </div>
                <div class="col-md-12">
                  <input class="contactus" placeholder="Email" type="text" name="Email">
                </div>
                <div class="col-md-12">
                  <input class="contactus" placeholder="Phone Number" type="text" name="Phone Number">
                </div>
                <div class="col-md-12">
                  <textarea class="textarea" placeholder="Message" type="text" name="Message"></textarea>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <button class="send">Send</button>
                </div>
              </div>
            </form>
          </div>
            </div>
      
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
			<div id="map">
          	</div>
           </div>
          </div>
        </div>

      </div>
    </div>
</div>
</div>
<!-- end contact -->
<!-- footer -->
<%@include file="layout/footer.jsp"%>
</c:when>


<c:otherwise>
<%@include file="layout/leftMenu.jsp"%>
     <section class="newsfeed_section">
      <div id="myCarousel" class="newsfeed slide" data-ride="carousel">
	      
	      <form action="/writeFeed" method="POST" enctype="multipart/form-data">
		      <input type="hidden" name="feedUser" value="${ login.user_id }" />
		      <textarea id="summernote" name="feedCont"></textarea>
		      <input type="submit" value="글쓰기" />
	      </form>
	      <div id="newsfeedList" class="newsfeedList">
			  <!-- 뉴스피드 공간 -->	        
	      </div>
      </div>
	  </section>
</c:otherwise>
</c:choose>
<script>
function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 11,
    center: {
      lat: 35.157305,
      lng: 129.057513
    },
  });

  var image = '/img/maps-and-flags.png';
  var beachMarker = new google.maps.Marker({
    position: {
       lat: 35.157305,
       lng: 129.057513
    },
    map: map,
    icon: image
  });
}
/* function uploadSummernoteImageFile(file, el) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$(el).summernote('editor.insertImage', data.url);
		}
	});
} */
function winOpen(user_id) {
	
	var url = '/UserProfile?user_id='+user_id;
	window.open(url, 'UserProfile','toolbar=no,status=no,menubar=no,scrollbars=no,','width=600px, height=600px');
}
$(function () {
	var user_id = '${login.user_id}';
	if(user_id!=''){
		$.ajax({
			url : '/readFeed',
			type : 'POST',
			data : {user_id : user_id},
			success : function (result) {
				var html='<hr>';
				console.log(result);
				for (var i = 0; i < result.feedList.length; i++) {
					html += '<img src="/user_photo/';
					html += result.feedList[i].sphoto_name;
					html += '" style="width:30px; height:30px; border-radius : 20px;">';
					html += '<a onclick="javascript:winOpen('+'\''+result.feedList[i].user_id+'\''+');"><b style="cursor: pointer;">';
					html += result.feedList[i].user_name;
					html += ' ('+result.feedList[i].user_id+')</b></a><br><br>';
					html += result.feedList[i].feed_cont;
					
					html += '<hr>';
					$('#newsfeedList').html(html);
				}
			},
			error : function (xhr) {
				
			}
		});
	}
	$('.Join_btn').on('click',function(){
		//alert('회원가입'); 확인
		var url = '/JoinForm';
		$(location).attr('href',url);
	});
	$('.Login_btn').on('click',function(){
		//alert('회원가입'); 확인
		var url = '/LoginForm';
		$(location).attr('href',url);
	});
	
	$('#summernote').summernote({
        placeholder: '새 피드를 작성하세요 !',
        tabsize: 2,
        maxHeight: 110,
        height: 100,
        lang: "ko-KR"/* ,
        callbacks : { 
        	onImageUpload : function(files, editor, welEditable) {
        // 파일 업로드(다중업로드를 위해 반복문 사용)
		        for (var i = files.length - 1; i >= 0; i--) {
		        	uploadSummernoteImageFile(files[i],this);
		        }
        	}
        } */
    });
});
</script>
<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
<!-- end google map js -->

</body>
</html>