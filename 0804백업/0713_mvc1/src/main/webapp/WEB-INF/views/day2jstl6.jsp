<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day2jstl6</title>
	</head>
	<body>
		<h1>EL에서 param변수 : request.getParameter</h1>
		<h2>글번호 : ${param.bno}</h2>
		<h2>글제목 : ${param.btitle}</h2>
		<h2>작성자 : ${param.bwriter}</h2>
		<h2>글내용 : ${param.bcnts}</h2>
		<h2>작성일 : ${param.bdate}</h2>
	</body>
</html>