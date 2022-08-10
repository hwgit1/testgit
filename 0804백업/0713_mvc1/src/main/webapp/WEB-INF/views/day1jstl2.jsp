<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day1jstl2</title>
	</head>
	<body>
		<h1>taglib : 테이블라이브러리</h1>
		<h1>prefix="c" : jstl을 사용하겠다는 선언(표현)</h1>
		
		<hr>
		
		<h1>c:if - 단일if문(else if 또는 else표현이 없는 if문)</h1>
		<h2>c:if test="${ testBool == false }" : if(testBool == false)</h2>
		<hr>
		<c:set var="testBool" value="false" />
		<!-- testBool의 값을 true/false로 바꾸면서 테스트 해보자. -->
		<c:if test="${ testBool == false }">
			<h1><font color="red">거짓</font></h1>
		</c:if>
		<c:if test="${ testBool == true }">
			</h1><font color="blue">참</font></h1>
		</c:if>
		
		<hr>
		
		<h1>c:choose - 다중if문(else if 또는 else표현이 있는 if문)</h1>
		<h1>c:when - else if표현</h1>
		<h1>c:otherwise - else표현</h1>
		<c:set var="jumsu" value="77" /><!-- jumsu의 값을 바꾸며 테스트 해보세요. -->
		<c:choose>
			<c:when test="${ jumsu > 90 }">A GRADE</c:when>
			<c:when test="${ jumsu > 80 }">B GRADE</c:when>
			<c:when test="${ jumsu > 70 }">C GRADE</c:when>
			<c:when test="${ jumsu > 60 }">D GRADE</c:when>
			<c:otherwise>F GRADE</c:otherwise>
		</c:choose>
	</body>
</html>