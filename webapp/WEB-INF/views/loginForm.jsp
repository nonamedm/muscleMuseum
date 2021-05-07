<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- header -->
<%@include file="layout/header.jsp"%>
<%
	Cookie[] cookies = request.getCookies();
	String idsave = "";
    for(Cookie cookie:cookies){
    	System.out.println("쿠키명 : "+cookie.getName());
    	System.out.println("쿠키값 : "+cookie.getValue());
    	if(cookie.getName().equals("idsave")) {
    		idsave = cookie.getValue();
    	}
    }
    

%>
<script>
	$(function(){
		$('#loginBtn').on('click',function(){
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
			var user_id = $('[name=user_id]').val();
			var user_pw = $('[name=user_pw]').val();
			
			loginCheck();
			if($('#loginChk').val()=='n') {
				return false;
			}
			
		})
	});
	function loginCheck(){
		$.ajax({
			url : '/LoginCheck',
			data : {
				user_id : $('[name=user_id]').val(),
				user_pw : $('[name=user_pw]').val()
			},
			type : 'POST',
			success : function (data) {
				if(data.result==1){
					alert("회원이 아닙니다.\n회원가입을 해주세요.");
				}
				
				if(data.result==2){
					alert("비밀번호가  틀렸습니다.");
				}
				
				if(data.result==0){
					alert(data.user_name+'님 환영합니다!');
					$('#loginChk').val('y');
					$('#loginForm').submit();
				}
			},
			error : function (xhr) {
				
			}
		});
	}
</script>
 <section class="slider_section">
	<div id="join" class="join">
		<div class="container-1">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>
							<strong class="llow">로그인</strong>
						</h2>
					</div>
				</div>
				<div class="white_color" style="width:700px;">
					<div class="row-login">
						<div class="col-xl-9 col-lg-9 col-md-9 col-sm-12">
							<form action="/Login" id="loginForm" class="join_bg" method="POST">
								<div class="row-login">
									<div class="col-md-12">
										<div class="col-md-12">
											<input class="joinus" placeholder="ID" type="text"
												name="user_id"  value="<%=idsave%>">
										</div>
										<div class="col-md-12">
											<input class="joinus" placeholder="PASSWORD" type="password"
												name="user_pw">
										</div>
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
										<label for="check" style="cursor:pointer">
										<c:set var="idsave" value="<%=idsave %>" />
										<c:choose>
										<c:when test="${idsave eq ''}">
										<input id="check" name="idrmb" type="checkbox"> <b class="blue">ID 기억하기</b>
										</c:when>
										<c:otherwise>
										<input id="check" type="checkbox" name="idrmb" checked="checked"> <b class="blue">ID 기억하기</b>
										</c:otherwise>
										</c:choose>
										</label>
										
											<input class="login" id="loginBtn" type="submit" value="LOGIN" />
											<!-- <input class="login" type="button" value="취소" onclick="javascript:history.back();"/>-->
											<input type="hidden" id="loginChk" value="n" />
										</div>
									</div>
							</form>
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