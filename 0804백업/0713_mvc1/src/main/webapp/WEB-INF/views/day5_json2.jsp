<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>day5_json2</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<style>
			td { text-align:center }
			th { text-align:center }
			th { background-color: lightgreen  }
			td { background-color: lightgray}
			td:hover{ background-color: orange}
		</style>
	</head>
	<body>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#btn1").click(function() {
						
				$.get(
						"${pageContext.request.contextPath}/json2_test"
						//,
						, function(data, status) {
							//alert(data);
							//data가 객체가 들어있는 배열일 경우 $.each();를 통해 객체를 하나씩 꺼낼 수 있다.
							$("#tbody").empty();
							$.each(JSON.parse(data), function(idx, dto) {
								$("#tbody").append(
										"<tr>"
										+ "<td>" + dto.empno + "</td>"
										+ "<td>" + dto.ename + "</td>"
										+ "<td>" + dto.job + "</td>"
										+ "<td>" + dto.mgr + "</td>"
										+ "<td>" + dto.hiredate + "</td>"
										+ "<td>" + dto.sal + "</td>"
										+ "<td>" + dto.comm + "</td>"
										+ "<td>" + dto.deptno + "</td>"
										+ "</tr>"
								);//append
							});//forEach
						}//callback function
				);//get
				
			});//click
		});//ready
		</script>
		
		<button id="btn1">사원 목록 불러오기</button>
		<hr>
		<table class="table table-hover">
			<thead>
				<th>사번</th> <th>이름</th> <th>직업</th> <th>팀장</th>
				<th>입사일</th> <th>급여</th> <th>성과급</th> <th>팀번호</th>
			</thead>
			<tbody id="tbody">
			</tbody>
		</table>
	</body>
</html>