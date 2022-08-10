<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>emp_detail</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			td { text-align:center }
			th { text-align:center }
			th { background-color: lightgreen  }
			td { background-color: lightgray}
			td:hover{ background-color: orange}
		</style>
	</head>
	<body>
		<table class="table table-hover"  border="1">
			<tr>
				<th>EMPNO</th><td>${detail_dto.empno}</td>
				<th>ENAME</th><td>${detail_dto.ename}</td>
			</tr>
			<tr>
				<th>JOB</th><td>${detail_dto.job}</td>
				<th>MGR</th><td>${detail_dto.mgr}</td>
			</tr>
			<tr>
				<th>HIREDATE</th><td>${detail_dto.hiredate}</td>
				<th>SAL</th>
				<td><i class="fa fa-won"></i>${detail_dto.sal}</td>
			</tr>
			<tr>
				<th>COMM</th>
				<td><i class="fa fa-won"></i>${detail_dto.comm}</td>
				<th>DEPTNO</th><td>${detail_dto.deptno}</td>
			</tr>
		</table>
	</body>
</html>