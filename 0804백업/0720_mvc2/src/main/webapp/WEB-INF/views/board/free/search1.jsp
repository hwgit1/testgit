<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>search1.jsp</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
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
		<h3> 검색 연습 1 - 검색어를 form 전송하는 예</h3>
		<hr>
		
		<form action="${pageContext.request.contextPath}/board/free/search1_test" method="get">
			
			<div class="input-group">
				
				<div class="input-group-prepend">
					<select class="form-control" id="searchOption" name="searchOption">
						<option value="title" <c:if test="${search_dto.searchOption == 'title'}">selected="selected"</c:if>>제 목</option>
						<option value="writer" <c:if test="${search_dto.searchOption == 'writer'}">selected="selected"</c:if>>작 성 자</option>
					</select>
				</div>	
				
				<input type="text" class="form-control" id="searchWord" name="searchWord" value="${search_dto.searchWord}">
				
				<div class="input-group-append">
					<button type="submit" class="btn btn-primary"> 검 색 </button>
				</div>
				
			</div>
			
		</form>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>글 번 호</th>		<th>제 목</th>		<th>작 성 자</th>		<th>조 회 수</th>		<th>작 성 일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.board_no}</td>
						<td>${dto.title}</td>
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