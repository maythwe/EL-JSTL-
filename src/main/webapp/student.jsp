<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
	<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="row mt-2 mb-2">
		<div class="col-10">
			<h2 class="mx-3 my-3 ">All Students</h2>
		</div>	
		<div class="col">
			<c:url value="/student-add.jsp" var="studentadd"></c:url>
			<a href="${studentadd}" class="btn btn-primary">Add Student</a>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<table class="table">
				<tr>
					<th>Photo</th>
					<th>Student Name</th>
					<th>Email</th>
					<th>Age</th>
					<th>Year</th>
					<th>Address</th>
					<th>DateOfBirth</th>
				</tr>
				<c:forEach items="${studentlist}" var="student">
					<tr>
						<td>
							<img src="/06-EL-JSTL/imgUploads/${userinfo.profile}" alt="Image" width="100" height="100" />
						</td>
						<td>${student.name }</td>
						<td>${student.email }</td>
						<td>${student.age }</td>
						<td>${student.year }</td>
						<td>${student.address }</td>
						<td>${student.dateofbirth}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>