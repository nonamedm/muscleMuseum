<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserProfile</title>
<style>
 .user_info {
   margin : 20px;
 }
 .user_info tr td {
 	padding : 10px;
 }

</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(function(){
		
	});

</script>
</head>
<body>
	<div id="title"><h2>${ userVo.user_name }님 개인 프로필</h2></div>
		
	<div id= "user_info">
	<table id="user_info" class="user_info" >
		<tr><td rowspan="4" style="height:250px;"><img src="user_photo/${ userVo.sphoto_name }" style="width:170px; height:200px;	border-radius: 20px; border-style: double; padding: 5px;" class="file-upload-image"/></td>
		<td style="height:50px;">${userVo.user_name } (${ userVo.user_id })</td></tr>
		<tr><td style="height:50px;">${userVo.user_mail }</td></tr>
		<tr><td style="height:100px;">${userVo.user_intro }</td></tr>
		<tr><td style="height:50px;">
			<form id="form">
				<input type="hidden" name="user_id" value="${ userVo.user_id }" />
				
				<input type="button" id="btnTalk" value="대화하기" />
				<input type="button" id="btnFollow" value="팔로우" />
			</form>
		</td></tr>
	</table>
	</div>
</body>
</html>