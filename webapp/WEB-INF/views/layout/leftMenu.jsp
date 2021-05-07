<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.leftMenu {
    display: block;
    text-align: center;
    float: left;
    height: 107vh;
    border: 1px solid #ECECF0;
    width: 240px;
    background-color: #ECECF0;
    color: black;
}

.leftMenu ul {
    margin-top: 0;
    list-style: none;
    padding: 0;
}

.leftMenu li:nth-child(1) {
    text-align: center;
    border-bottom: 1px solid #ECECF0;
    padding-bottom: 18px;
    padding-top: 18px;
    cursor: pointer;
    font-size: 14px;
    height: 250px;
}
.leftMenu li:nth-child(2) {
    text-align: center;
    border-bottom: 1px solid #ECECF0;
    padding-bottom: 18px;
    padding-top: 18px;
    cursor: pointer;
    font-size: 14px;
    height: 150px;
}
.leftMenu li:nth-child(3) {
    text-align: center;
    border-bottom: 1px solid #ECECF0;
    padding-bottom: 18px;
    padding-top: 18px;
    cursor: pointer;
    font-size: 14px;
    height: 400px;
    overflow: scroll;
}

.leftMenu li:hover {
    /* background-color: #282A35; */
}

.leftMenu li p {
    margin: 0;
    font-family: 'Roboto', sans-serif;
    font-weight: 300;
    font-size: 13px;
}
ul>li>img {
	width:170px;
	height:200px;
	border-radius: 20px;
	border-style: double;
	padding: 5px;
}
ul>li>img:hover {
	box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}
</style>
<div class="leftMenu" id="jobMenu">
    <ul>
        <li onclick="javascript:insertPhoto();">
            <img src="/user_photo/${sphoto_name}" >
            <%-- <p>${login.user_id }의 이미지</p> --%>
        </li>
        <li ng-click="menuClick(2)">
            <table class="left_profile">
            <tr><th>${ login.user_name }</th></tr>
            <tr><th>${ login.user_mail }</th></tr>
            <tr><th>${ login.user_phone }</th></tr>
            <tr><th>${ login.user_intro }</th></tr>
            </table>
        </li>
        <li ng-click="menuClick(3)">
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
            <div>
            하나
            </div>
        </li>
        
    </ul>
</div>
<script>
	  function insertPhoto(){
		  var win;
		  win = open('/InsertPhotoFm','InsertPhoto','width=450,height=500');
	  }
	  function poll () {
			$.ajax ({
				url : '/alertCount',
				type : 'POST',
				data : {loginId : '${login.user_id}'},
				complete : poll,
				timeout : 30000,
				success : function (result) {
					
					if(result.alertCount == 0){
						$('#alertCount').hide();
					}else{
						$('#alertCount').show();
						$('#alertCount').html(result.alertCount);
					}
				},
				error : function (xhr) {
					//alert(xhr.status+" : "+xhr.statusText);
				}
			});
	  }
	  $(function () {
		  
	  })
</script>