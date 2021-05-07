<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertPhoto</title>
<style>
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(function(){
		$('#btnSubmit').on('click',function(){
			var formData = new FormData($('#form')[0]);
			$.ajax({
				url : '/InsertPhoto',
				type : 'POST',
				processData: false, // 필수 
				contentType: false, // 필수 
				data: formData,
				success : function (data) {
					alert('프로필 사진이 등록되었습니다 !');
					window.opener.location.reload();
					window.close();
				}
			})
		})
	});
	function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            var loading = '';
            reader.onload = function (e) {
                $('.file-upload-image').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        } else {
            removeUpload();
        }
    }

</script>
</head>
<body>
	<div id="title"><h2>프로필 사진 수정</h2>
	<img src="user_photo/${ sphoto_name }" style="width : 200px; height:auto" class="file-upload-image"/>
	<form enctype="multipart/form-data" id="form">
		<input type="hidden" name="user_id" value="${ login.user_id }" />
		<input type="file" name="user_photo" class="file-upload-image" onchange="readURL(this)">
		<input type="button" id="btnSubmit" value="변경하기" />
	</form>
	</div>
</body>
</html>