<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#title {text-align : center; border:1px solid black; margin:0px auto; padding : 10px; width: fit-content}
 #jointable { margin:0px auto;}
 table, td {text-align:center; border:1px solid; border-collapse:collapse; padding: 10px;}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(function(){
		$('form').on('submit',function(){
			if($('[name=userid]').val().trim().length==0){
				alert('아이디를 입력하세요');
				$('[name=userid]').focus();
				return false;
			}
			if($('[name=userpw]').val().trim().length==0){
				alert('비밀번호를 입력하세요');
				$('[name=userpw]').focus();
				return false;
			}
			if($('[name=username]').val().trim().length==0){
				alert('이름을 입력하세요');
				$('[name=username]').focus();
				return false;
			}
			if($('[name=useremail]').val().trim().length==0){
				alert('이메일을 입력하세요');
				$('[name=useremail]').focus();
				return false;
			}
			alert('회원가입성공');
			return true;
		})
	});
</script>
</head>
<body>
	<div id="title"><h2>회원가입</h2>
	<form action="/User/Insert" method="POST" >
	<table id="jointable">
		<tr>
			<td>아 이 디</td><td><input type="text" name="userid" /></td>
		</tr>	
		<tr>
			<td>패스워드</td><td><input type="password" name="userpw" /></td>
		</tr>	
		<tr>
			<td>이    름</td><td><input type="text" name="username" /></td>
		</tr>	
		<tr>
			<td>이 메 일</td><td><input type="text" name="useremail" /></td>
		</tr>
	</table>
		<br>
		<input type="submit" value="가   입" />
	</form>
	</div>
</body>
</html>