<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- header -->
<%@include file="layout/header.jsp"%>
<script>
	$(function(){
		$('[name=user_id]').keyup(function () {
			if($('[name=user_id]').val().length>=4){
				var user_id = $(this).val();
				$.ajax({
					url : '/idCheck',
					data : {user_id : user_id},
					type : 'POST',
					success : function (result) {
						if(result=="true") {
							$('#id_check').html(result.html);
						} else {
							$('#id_check').html(result.html);
						}
					}
				});
			}
		});
		$('[name=user_pw]').keyup(function () {
			if($('[name=user_pw]').val().length>=1){
				var user_pw = $(this).val();
				$.ajax({
					url : '/pwCheck',
					data : {user_pw : user_pw},
					type : 'POST',
					success : function (result) {
						if(result=="true") {
							$('#pw_check').html(result.html);
						} else {
							$('#pw_check').html(result.html);
						}
					}
				});
			}
		});
		$('[name=user_pwchk]').keyup(function () {
				var user_pw = $('[name=user_pw]').val();
				var user_pwchk = $(this).val();
				$.ajax({
					url : '/pwCheckReg',
					data : {user_pw : user_pw, user_pwchk : user_pwchk},
					type : 'POST',
					success : function (result) {
						if(result=="true") {
							$('#pw_checkreg').html(result.html);
						} else {
							$('#pw_checkreg').html(result.html);
						}
					}
				});
		});
		$('form').on('submit',function(){
			if($('[name=user_id]').val().trim().length==0){
				alert('아이디를 입력하세요');
				$('[name=user_id]').focus();
				return false;
			}
			if($('[name=user_pw]').val().trim().length==0){
				alert('비밀번호를 입력하세요');
				$('[name=user_pw]').focus();
				return false;
			}
			if($('[name=user_name]').val().trim().length==0){
				alert('이름을 입력하세요');
				$('[name=user_name]').focus();
				return false;
			}
			if($('[name=user_mail]').val().trim().length==0){
				alert('이메일을 입력하세요');
				$('[name=user_mail]').focus();
				return false;
			}
			return true;
		})
	});
</script>
 <section class="slider_section">
	<div id="join" class="join">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>
							회원 <strong class="llow">가입</strong>
						</h2>
					</div>
				</div>
				<div class="white_color" style="width:1200px;">
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
							<form action="/Join" class="join_bg" method="POST">
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-12">
										<span id="id_check" required style="display:block"><b class="red">　</b></span>
											<input class="joinus" placeholder="ID" type="text"
												name="user_id"><b class="red">(*)</b>
												
										</div>
										<div class="col-md-12">
										<span id="pw_check" required style="display:block"><b class="red">　</b></span>
											<input class="joinus" placeholder="PASSWORD" type="password"
												name="user_pw"><b class="red">(*)</b>
										</div>
										<div class="col-md-12">
										<span id="pw_checkreg" required style="display:block"><b class="red">　</b></span>
											<input class="joinus" placeholder="PASSWORD 확인" type="password"
												name="user_pwchk"><b class="red">(*)</b>
										</div>
										<div class="col-md-12">
											<input class="joinus" placeholder="Your Name" type="text"
												name="user_name"><b class="red">(*)</b>
										</div>
										<div class="col-md-12">
											<input class="joinus" placeholder="Email" type="text"
												name="user_mail"><b class="red">(*)</b>
										</div>
										<div class="col-md-12">
											<input class="joinus" placeholder="Phone Number"
												type="text" name="user_phone">
										</div>
										<div class="col-md-12">
											<textarea class="textarea" placeholder="Message" type="text"
												name="user_intro"></textarea>
										</div>
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
											<input class="send" type="submit" value="JOIN" />
										</div>
									</div>
							</form>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12" style="padding-top: 120px;">
						<div class="images_box">
                     		<figure><img src="/img/dwayne.jpg" style="width:90%"></figure>
                    	</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- footer -->
<%@include file="layout/footer.jsp"%>
</body>
</html>