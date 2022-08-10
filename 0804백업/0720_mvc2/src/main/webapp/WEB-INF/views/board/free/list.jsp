<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유 게시판 목록</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- 		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script> -->
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<style>
			td { text-align:center }
			th { text-align:center }
			thead { background-color: lightgreen  }
			tbody { background-color: lightgray}
			td:hover{ background-color: orange}
		</style>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
		<hr>
		<h3>자유 게시판</h3>
		<hr>
		<div class="clearfix">
			<a href="${pageContext.request.contextPath}/board/free/write_form">
				<button type="button" class="btn btn-primary float-right">글 쓰러 가기</button>
			</a>
		</div>
		<hr>
		<table class="table table-hover">
			<thead>
				<th>글 번 호</th> <th>제 목</th> <th>작 성 자</th> <th>조 회 수</th> <th>작 성 일</th>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.board_no}</td>
						<td>
							<a href="${pageContext.request.contextPath}/board/free/detail?board_no=${dto.board_no}">
								${dto.title}
							</a>
						</td>
						<td>${dto.writer}</td>
						<td>${dto.view_cnt}</td>
						<td>${dto.write_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<%@ include file="/WEB-INF/views/footer.jsp" %>	
	</body>
</html>