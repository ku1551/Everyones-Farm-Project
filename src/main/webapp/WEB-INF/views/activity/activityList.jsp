<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/activity/activityList.css" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<style>
.row {
	display: none;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
	
	/* 더보기 버튼 설정 */
	var experience_total = $(".experience-list .row").length;
	var help_total = $(".help-list .row").length;

	var experience_view = 6;
	var help_view = 6;
	
	if($(".experience-list .row:visible").size() > experience_total) {
		$(".experience_load").css('display', 'none');
	}
	
	if($(".help-list .row:visible").size() > help_total) {
		$(".help_load").css('display', 'none');
	}
	
	
	
	for (var i=0; i<experience_view;i++ )	{
		$(".experience-list .row").eq(i).css('display', 'inline-block');
	}

	/* 농장 체험 목록 더보기 버튼 클릭 함수 */
	$(".experience_load").click(function() {

			experience_view += 6;

			for (var i=0; i<experience_view;i++ )	{
				$(".experience-list .row").eq(i).fadeIn();
				$(".experience-list .row").eq(i).css('display', 'inline-block');
			}
			
			if($(".experience-list .row:visible").size()==experience_total) {
				$(".experience_load").css('display', 'none');
			}

	})

	
	for (var i=0; i<help_view;i++ )	{
		$(".help-list .row").eq(i).css('display', 'inline-block');
	}
	
	/* 일손 돕기 목록 더보기 버튼 클릭 함수 */
	$(".help_load").click(function() {

			help_view += 6;

			for (var i=0; i<help_view;i++ )	{
				$(".help-list .row").eq(i).fadeIn();
				$(".help-list .row").eq(i).css('display', 'inline-block');
			}
			
			if($(".help-list .row:visible").size()==help_total) {
				$(".help_load").css('display', 'none');
			}

	})
	
	
	
	/* 이미지 파일이 없는 체험 활동에 기본 이미지 출력 */
	$(".thumb-image").each(function() {
		if($(this).find("img").length == 0) {
			$(this).prepend($("<img src='<%=request.getContextPath() %>/resources/image/no-image.png' width='270' height='270'>"))
		} 
	})
	
})
</script>

</head>
<body>

<div class="activity-top">
	<div class="top-title">${farmerInfo }님의 체험 목록</div>
	<div class="title-img"><img src="<%=request.getContextPath() %>/resources/image/activity_title.png" width="550" alt="체험활동 타이틀" ></div>
</div>

<div class="activity-content">

	<div class="experience-title">
		<h3>체험 목록</h3>
		<hr>
	</div>
		
	<div class="experience-list">
	
	<c:forEach items="${data.activityList }" var="activity">
	
	<c:if test="${activity.isHelp eq 0 }">
			<div class="row">
			
				<div class="thumb-image">
				
				<c:forEach items="${data.fileList }" var="file">
					<c:if test="${file.activityNo eq activity.activityNo }">
						<img src="<%=request.getContextPath() %>/resources/upload/${file.fileRename }" alt="체험활동 이미지" width="270" height="270">
					</c:if>
				</c:forEach>
				
				</div>
				
				<div class="caption">
		        	<div class="caption-title">${activity.title }</div>
		        	
	        		<div class="caption-content">최대 인원 : ${activity.availNumber }</div>

				</div>
				
			</div>
			
<%-- 			<c:if test="${status.count%3 eq 0 }"> --%>
<%-- 				<c:if test="${not status.last }"> --%>
<!-- 					<hr> -->
<%-- 				</c:if> --%>
<%-- 			</c:if> --%>
	
	</c:if>
	
	</c:forEach>

	</div>
	
	<div class="experience_load load" >더보기</div>
	


	<div class="help-title">
		<h3>일손 돕기</h3>
		<hr>
	</div>

	<div class="help-list">
	<c:forEach items="${data.activityList }" var="activity">

	<c:if test="${activity.isHelp eq 1 }">
	
			<div class="row">
			
				<div class="thumb-image">
				
				<c:forEach items="${data.fileList }" var="file">
					<c:if test="${file.activityNo eq activity.activityNo }">
						<img src="<%=request.getContextPath() %>/resources/upload/${file.fileRename }" alt="체험활동 이미지" width="270" height="270">
					</c:if>
				</c:forEach>
				
				</div>
				
				<div class="caption">
		        	<div class="caption-title">${activity.title }</div>
		        	
<!-- 	        		<div class="sort">일손 돕기</div> -->
	        		<div class="caption-content">최대 인원 : ${activity.availNumber }</div>
		        	
				</div>
				
			</div>
			
<%-- 			<c:if test="${status.count%3 eq 0 }"> --%>
<%-- 				<c:if test="${not status.last }"> --%>
<!-- 					<hr> -->
<%-- 				</c:if> --%>
<%-- 			</c:if> --%>
			
			

	</c:if>
	
	</c:forEach>
	
	</div>
		
		<div class="help_load load" >더보기</div>

	
	<button class="btnForm" type="button" onclick="javascript:location.href='activityForm.do'">체험 등록</button>

</div>


</body>
</html>