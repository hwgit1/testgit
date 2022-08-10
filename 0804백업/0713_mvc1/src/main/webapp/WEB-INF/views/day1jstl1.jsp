<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day1jstl1</title>
	</head>
	<body>
		<h1>JSTL : Java Standard Tag Library</h1>
		<h3>jstl : jsp를 쉽게 사용하도록 만들어진 라이브러리( 연상 예 - 자바스크립트를 쉽게 사용하기 위해 만들어진 jQuery처럼)</h3>
		<h3>링크 : &lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;</h3>
		<h2>c:out은 출력 태그 : <c:out value="123456789" /> : el이 더 우수 </h2>
		
		<c:set var="nameOfVariable" value="변수에 대입된 값" />
		<h2>c:set은 변수 선언 태그 : <c:out value="${nameOfVariable}" /></h2>
		<hr>
		<h2>변수 삭제 전 : ${nameOfVariable}</h2>
		<c:remove var="nameOfVariable" />
		<h2>변수 삭제 후 : ${nameOfVariable}</h2>
	</body>
</html>