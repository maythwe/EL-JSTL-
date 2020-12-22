<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<jsp:include page="/common/menu.jsp"></jsp:include>
	<div class="row mt-2 mb-2">
		<div class="col-10">
			<h2 class="mx-3 my-3 ">All Courses</h2>
		</div>	
		<div class="col">
			<c:url value="/course-add.jsp" var="add"></c:url>
			<a href="${add}" class="btn btn-primary">Add Course</a>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<table class="table">
				<tr>
					<th>Course Name</th>
					<th>Price</th>
					<th>Level</th>
					<th>Duration</th>
					<th>Start Date</th>
				</tr>
				<c:forEach items="${courseList}" var="course">
					<tr>
						<td>${course.name }</td>
						<td>${course.price }</td>
						<td>${course.level }</td>
						<td>${course.duration }</td>
						<td>${course.startDate }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>