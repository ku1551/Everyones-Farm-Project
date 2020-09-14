<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
=======

<%@include file="../../include/header.jsp"%>
>>>>>>> 4f609ed6ae2026061686ed652541ba063ad3fa05
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
.input-group {
	margin-top: 30px;
}

div {
	text-align: center;
}

.col-lg-1 {
	width: 50%;
	margin-left: 150px;
}

span {
	padding: 0;
}

.input-group {
	width: 400px;
}

label {
	padding-left: 0;
	text-align: left;
}

.btn-warning {
	width: 90px;
	height: 50px;
	margin-top: 30px;
	margin-right: 150px;
}
.media-object{
	margin-left : 70px;
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
			<div class="col-lg-3">
				<h3 class="my-4 text-left">회원 정보 수정</h3>
				<hr>
				<div class="panel panel-default">
					<div class="panel-heading">회원</div>
					<div class="panel-body">회원정보 수정</div>
					<div class="panel-body">회원 탈퇴</div>
					<div class="panel-body">1대 1 문의</div>
					<div class="panel-body">활동 신청 현황</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">주문</div>
					<div class="panel-body">구매 목록</div>
					<div class="panel-body">장바구니</div>
				</div>

			</div>
<<<<<<< HEAD
			<div class="col-lg-1">
				<form action="modfy/userImg" method="post">
					<div class="media">
						<div class="media-left media-middle">
							<a href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/resources/img/basic.jpg"
								alt="...">
							</a>
						</div>
						<button type="submit" class="btn btn-warning"
							onclick="selectUrl('/modify/confirm')">사진 등록</button>
					</div>
				</form>
				<div class="ModifyUserInfo">

					<form action="modify/userInfo" method="post">
						<!-- 			아이디 -->
						<div class="input-group">
							<label for="inputName" class="col-lg-3 control-label">아이디</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon glyphicon glyphicon-user"
									id="sizing-addon1"></span> <input type="text"
									class="form-control" placeholder="아이디"
									aria-describedby="sizing-addon1" value="${userData.USER_ID}"}>
							</div>
						</div>
						<!-- 			비밀번호 -->
						<div class="input-group">
							<label for="inputName" class="col-lg-3 control-label">비밀번호</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon glyphicon glyphicon-lock"
									id="sizing-addon1"></span> <input type="password"
									class="form-control" placeholder="비밀번호"
									aria-describedby="sizing-addon1" value="${userData.USER_PW} }">
							</div>
						</div>
						<!-- 			이름 -->
						<div class="input-group">
							<label for="inputName" class="col-lg-3 control-label">이름</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon glyphicon glyphicon-user"
									id="sizing-addon1"></span> <input type="text"
									class="form-control" placeholder="이름"
									aria-describedby="sizing-addon1" value="${userData.USER_NAME}"
									readonly>
							</div>
						</div>

						<!-- 			이메일 -->
						<div class="input-group">
							<label for="inputName" class="col-lg-3 control-label">E-Mail</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon glyphicon glyphicon-envelope"
									id="sizing-addon1"></span> <input type="text"
									class="form-control" placeholder="E-Mail"
									aria-describedby="sizing-addon1" value="${userData.EMAIL}">
							</div>
						</div>
						<!-- 			전화번호 -->
						<div class="input-group">
							<label for="inputName" class="col-lg-3 control-label">전화번호</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon glyphicon glyphicon-earphone"
									id="sizing-addon1"></span> <input type="text"
									class="form-control" placeholder="전화번호"
									aria-describedby="sizing-addon1" value="${userData.PHONE}">
							</div>
						</div>
						<!-- 			주소 -->
						<div class="input-group">
							<label for="inputName" class="col-lg-3 control-label">주소</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon glyphicon glyphicon-home"
									id="sizing-addon1"></span> <input type="text"
									class="form-control" placeholder="주소"
									aria-describedby="sizing-addon1"
									value="${userData.FIRST_ADDRESS}">
							</div>
						</div>


<<<<<<< HEAD
=======
<!-- Page Content -->
<div class="container">
	<div class="row">
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
>>>>>>> parent of 99d9b7a... mypageUser Without FarmerSession added

						<button type="submit" class="btn btn-warning"
							onclick="selectUrl('/modify/confirm')">등록</button>

					</form>
				</div>
=======
		</div>
		<div class="col-lg-1">
			<hr>
			<h2>${one.title}</h2>
			<hr>
			<div class="info">
				<span>게시글번호 : ${one.questionNo} <br></span> <span>등록일 :
					${one.regDate} |</span> <span>작성자 : ${one.userNo}</span>
			</div>
			<hr>
			<div class="content">${one.content }</div>
			<div class="nearcontent">
				<table class="table">


					<tr>
						<td>페이지 이동</td>
						<td>문의 번호</td>
						<td>제목</td>
						<td>작성자 번호</td>
						<td>답변 확인</td>
					</tr>
					<c:if test="${total.MAX ne one.questionNo }">
						<tr>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${up.questionNo}">
									<span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span>
									이전 페이지
							</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${up.questionNo}">${up.questionNo }</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${up.questionNo}">${up.title }</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${up.questionNo}">${up.userNo }</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${up.questionNo}">${up.isAnswered }</a></td>
						</tr>
					</c:if>
					<c:if test="${total.MIN ne one.questionNo }">
						<tr>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${down.questionNo}">
									<span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
									다음 페이지
							</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${down.questionNo}">${down.questionNo }</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${down.questionNo}">${down.title }</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${down.questionNo}">${down.userNo }</a></td>
							<td><a
								href="<%= request.getContextPath() %>/mypage/user/mypageO3Detail?QUESTION_NO=${down.questionNo}">${down.isAnswered }</a></td>
						</tr>
					</c:if>
				</table>
			</div>
			<div>
				<button class="btn btn btn-success pull-right" type="button"
					onclick="javascript:location.href='mypageO3List'">뒤로가기</button>
				<c:if test="${userInfo.userNo eq one.userNo }">
					<button class="btn btn-warning pull-right" type="button"
						onclick="javascript:location.href='deleteO3?QUESTION_NO=${one.questionNo}'">삭제</button>
				</c:if>
>>>>>>> 4f609ed6ae2026061686ed652541ba063ad3fa05
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function selectUrl(url){
			var root = '<%=request.getContextPath()%>';
			
			document.querySelector('#form-data').action = root + url;
		}
	</script>







<<<<<<< HEAD
</body>
</html>
=======
<%@include file="../../include/footer.jsp"%>
>>>>>>> 4f609ed6ae2026061686ed652541ba063ad3fa05
