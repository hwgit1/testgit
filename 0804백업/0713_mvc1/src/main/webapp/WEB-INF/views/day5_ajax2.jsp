<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day5_ajax2</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	</head>
	<body>
		<button id="btn2"> Call Ajax Test </button>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#btn2").click(function() {
				
				$.post(
						"${pageContext.request.contextPath}/ajax2_test"
						, {name:"value", id:"ict1", pwd:"1111"}
						, function(data, status) {
							alert(data);
							alert(status);
						}//function
				);//post
				
			});//click
		})//ready
		</script>
	</body>
</html>