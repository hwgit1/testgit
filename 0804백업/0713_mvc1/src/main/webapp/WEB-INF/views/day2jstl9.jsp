<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day2jstl9</title>
	</head>
	<body>
		<h1>day2jstl9.jsp</h1>
		<h1>c:redirect - jsp의 response.sendRedirect() - 새로운 다른 페이지를 실행시키는 역할</h1>
		<h1>스프링 프레임워크에서 c:redirect url은 @RequestMapping의 value를 호출한다.</h1>
		<h1>파라미터 전달가능</h1>
		<c:redirect url="/jstl6">
			<c:param name="bno" value="117" />
			<c:param name="btitle" value="한글테스트" />
			<c:param name="bwriter" value="홍길동" />
			<c:param name="bcnts" value="한글도 되나요?" />
			<c:param name="bdate" value="8월 15일" />
		</c:redirect>
	</body>
</html>