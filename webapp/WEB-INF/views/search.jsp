<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

  <!-- header -->
  <%@include file="layout/header.jsp"%>
  
  <%@include file="layout/leftMenu.jsp"%>
     <section class="newsfeed_section">
      <div id="myCarousel" class="newsfeed slide" data-ride="carousel">
	      
	      <div id="allSearchList" class="allSearchList">
			  <!-- 검색결과 공간 -->
			  <h3>유저 검색결과 - 총 ${ userVoSize }건</h3><br>
			  <c:forEach var="user" items="${ userVo }">
			  <table id="">
			    <tbody>
			    	<tr>
			    		<td><img src="/user_photo/${user.sphoto_name }" style="width:30px; height:30px; border-radius : 20px;" /></td>
			    		<td><b>${user.user_name } (${ user.user_id })</b></td>
			    	</tr>
		    		<tr>
		    			<td colspan="2"><b>${user.user_mail }</b></td>
	    			</tr> 
	    			<tr>
	    				<td colspan="2"><b>${user.user_intro }</b></td>
	    			</tr>
				  	
			  	</tbody>
			  </table>
			  </c:forEach>
			  <hr>
			  <h3>피드 검색결과 - 총 ${ feedAllSearchSize }건</h3><br>
			  <c:forEach var="feed" items="${ feedAllSearch }">
			  	<img src="/user_photo/${feed.sphoto_name }" style="width:30px; height:30px; border-radius : 20px;" />
			  	    <b>${feed.user_name } (${feed.user_id })</b><br><br>${ feed.feed_cont }<hr>
			  </c:forEach>
	      </div>
      </div>
	  </section>
<script>
$(function () {
	/* var user_id = '${login.user_id}';
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
					html += '" style="width:30px; height:30px; border-radius : 20px;">　<b>'+result.feedList[i].user_name;
					html += ' ('+result.feedList[i].user_id+')</b><br><br>'
					html += result.feedList[i].feed_cont;
					
					html += '<hr>';
					$('#newsfeedList').html(html);
				}
			},
			error : function (xhr) {
				
			}
		});
	} */
});
</script>
<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
<!-- end google map js -->

</body>
</html>