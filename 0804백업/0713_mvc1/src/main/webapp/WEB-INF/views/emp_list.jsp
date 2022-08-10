<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>emp_list</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
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
	<table class="table table-hover" border="1">
	<thead>
		<tr>
			<th>EMPNO</th> <th>ENAME</th> <th>JOB</th> <th>MGR</th> 
			<th>HIREDATE</th> <th>SAL</th> <th>COMM</th> <th>DEPTNO</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${emp_dto_list}" varStatus="">
			<tr>
			<td>${ dto.empno }</td> 
			<td><a href="${ pageContext.request.contextPath }/emp/detail?eno=${dto.empno}">${ dto.ename }</a></td> 
			<td>${ dto.job }</td> 
			<td>${ dto.mgr }</td> 
			<td>${ dto.hiredate }</td>
			<td>${ dto.sal }</td> 
			<td>${ dto.comm }</td> 
			<td>${ dto.deptno }</td>
			</tr>
		</c:forEach>
	</tbody>	
	</table>
	</body>
</html>