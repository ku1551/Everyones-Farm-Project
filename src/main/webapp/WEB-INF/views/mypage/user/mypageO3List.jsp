<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
.col-lg-5{
	margin-top: 100px;
	margin-left: 100px;
	width : 700px;
}
.panel-default{
	border : none;
}
.panel-default>.panel-heading {
    background-color: white;
    border: none;
    font-weight: bold;
    font-size : 17px;
}
</style>
  
<!-- 네비바를 fiexd-top으로 설정했을 때 컨텐츠와 겹치는 문제 방지 -->
<body class="pt-5">
	<!-- Page Content -->
	<div class="container">
		<div class="row">
<<<<<<< HEAD
			<div class="col-lg-3">
				<h3 class="my-4 text-left">회원 정보 수정</h3>
				<hr>
				<div class="panel panel-default">
					<div class="panel-heading">회원</div>
					<div class="panel-body">회원정보 수정</div>
					<div class="panel-body">회원 탈퇴</div>
					<div class="panel-body">1대 1 문의</div>
					<div class="panel-body">활동 신청 현황</div>
=======
		<div class="col-lg-3">
			<h3 class="my-4 text-left">영농 일지</h3>
			<hr>
			<div class="panel panel-default">
				<div class="panel-heading">
					<a href="<%=request.getContextPath()%>/mypage/user/modify">회원</a>
				</div>
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/mypage/user/modify">회원정보
						수정</a>
				</div>
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/mypage/user/mypageO3List">1대
						1 문의</a>
				</div>
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/mypage/user/myActive">활동
						신청 현황</a>
				</div>
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/mypage/user/deleteId"
						style="color: #ccc;">회원 탈퇴</a>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<a href="<%=request.getContextPath()%>/mypage/user/basket">주문</a>
				</div>
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/mypage/user/basket">장바구니</a>
				</div>
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/mypage/user/orderList">구매
						목록</a>
>>>>>>> parent of 99d9b7a... mypageUser Without FarmerSession added
				</div>

				<div class="panel panel-default">
<<<<<<< HEAD
					<div class="panel-heading">주문</div>
					<div class="panel-body">구매 목록</div>
					<div class="panel-body">장바구니</div>
=======
					<div class="panel-heading">
						<a href="<%=request.getContextPath()%>/mypage/user/basket">농업인
						</a>
					</div>
					<div class="panel-body">
						<a href="#">내 정보</a>
					</div>
					<div class="panel-body">
						<a href="/farmapp/mypage/selllist">판매 목록</a>
					</div>
					<div class="panel-body">
						<a href="/farmapp/mypage/dailyLoglist">영농 일지</a>
					</div>
					<div class="panel-body">
						<a href="/farmapp/mypage/activitylist" style="font-weight: bold;">체험
							신청내역</a>
					</div>

>>>>>>> parent of 99d9b7a... mypageUser Without FarmerSession added
				</div>

			</div>

			<div class="col-lg-5">
				<!-- 리스트 시작-->
				<div class="panel panel-default">

					<!-- Table -->
					<table class="table">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>답변상태</th>
						</tr>
<<<<<<< HEAD
						<c:forEach items="${O3List}" var="O3">
						<tr>
							<td>${O3.questionNo }</td>
							<td>${O3.title }</td>
							<td>${O3.content }</td>
							<td>${O3.userNo }</td>
							<td>${O3.regDate }</td>
						</tr>
=======
						<c:forEach items="${list.o3List}" var="O3">
							<tr>
								<td><a
									href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${O3.QUESTION_NO}&&row=${O3.RNUM}">${O3.QUESTION_NO }</a></td>
								<td><a
									href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${O3.QUESTION_NO}">${O3.TITLE }</a></td>
								<td><a
									href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${O3.QUESTION_NO}">${O3.USER_NAME }</a></td>
								<td><a
									href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${O3.QUESTION_NO}">${O3.REG_DATE }</a></td>
								<c:choose>
									<c:when test="${O3.IS_ANSWERED eq 1 }">
										<td><a
											href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${O3.QUESTION_NO}">답변
												된 질문</a></td>
									</c:when>
									<c:otherwise>
										<td><a
											href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${O3.QUESTION_NO}">미답변
												질문</a></td>
									</c:otherwise>
								</c:choose>
							</tr>
>>>>>>> 4f609ed6ae2026061686ed652541ba063ad3fa05
						</c:forEach>
					</table>
				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		function selectUrl(url){
			var root = '<%=request.getContextPath()%>';

			document.querySelector('#form-data').action = root + url;
		}
	</script>







</body>
</html>