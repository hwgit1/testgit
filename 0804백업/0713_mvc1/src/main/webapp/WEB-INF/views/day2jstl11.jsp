<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day2jstl11</title>
	</head>
	<body>
		<h1>jstl 문자열 function</h1>
		<c:set var="str" value="Nice To Meet You, Too." />
		<h3>str : ${str}</h3>
		<hr>
		<c:set var="strArr" value='${ fn:split(str, " ") }'></c:set>
		<h3>
			<c:forEach var="let" items="${ strArr }">
				${ let }<br>
			</c:forEach>
		</h3>
		<hr>
		<h3>fn:replace(str, "You", "U~~") : ${ fn:replace(str, "You", "U~~") }</h3>
		<h3>fn:substring(str, 3, 11) : ${ fn:substring(str, 3, 11) }</h3>
		<hr>
		<h3>fn:indexOf(str, "You") : ${ fn:indexOf(str, "To") }</h3>
		<h3>fn:startsWith(str, "N") : ${ fn:startsWith(str, "N") }</h3>
		<h3>fn:endsWith(str, "o.") : ${ fn:endsWith(str, "o.") }</h3>
		<hr>
		<h3>fn:length(str) : ${fn:length(str)}</h3>
		<h3>fn:contains(str, "meet") : ${ fn:contains(str, "meet") }</h3>
		<h3>fn:containsIgnoreCase(str, "meet") : ${ fn:containsIgnoreCase(str, "meet") }</h3><!-- fn:containsIgnoreCase : 대소문자 구분x -->
		<h3>fn:toLowerCase(str, "meet") : ${ fn:toLowerCase(str) }</h3>
		<h3>fn:toUpperCase(str, "meet") : ${ fn:toUpperCase(str) }</h3>
	</body>
</html>