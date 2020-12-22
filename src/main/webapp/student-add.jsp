<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>
	<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="container">
		<div class="row">
			<div class="col-12 my-4 mx-4 text-center">
				<h2>Add New Student</h2>
			</div>
		</div>
		</div>
		<div class="row">
			<div class="col-12 ml-4">
				<hr />
			<c:url value="/add-student" var="addstudent"></c:url>
			<form action="${addstudent}" class="form col-6" method="post" enctype="multipart/form-data">
				<div class="form-group">
		        <label for="">Photo: </label>
		        <input type="file" name="photo" required="required"/>
		        </div>
		      	<div class="form-group">
		        <label for="">Student Name: </label>
		        <input type="text" name="studentname" required="required" placeholder="Enter Student Name" class="form-control" />
		        </div>
		        <div class="form-group">
		        	<label for="">Email: </label>
		        	<input type="email" name="email" required="required" class="form-control" />
		        </div>
		        <div class="form-group">
		        <label for="">Age: </label>
		        <input type="number" name="age" required="required" class="form-control" />
		        </div>
		        <div class="form-group">
		        	<label for="">Year: </label>
		        	<select name="year" id="year" class="form-control">
		        		<option value="First">First</option>
		        		<option value="Second">Second</option>
		        		<option value="Third">Third</option>
		        		<option value="Fourth">Fourth</option>
		        		<option value="Fifth">Fifth</option>
		        	</select>
		        </div>
		        <div class="form-group">
		        	<div class="form-group">
		        		<label for="">Address: </label>
		        		<input type="text" name="address" required="required" placeholder="Enter Address" class="form-control" />
		        	</div>
		        </div>
		        <div class="form-group">
		        	<div class="form-group">
		        		<label for="">DateOfBirth: </label>
		        		<input type="date" name="dateofbirth" required="required" class="form-control" />
		        	</div>
		        </div>
		        	<button type="submit" class="btn btn-outline-primary">Save</button>
		        	<button type="submit" class="btn btn-outline-danger float-right">Reset</button>
		       </form>
			</div>
		</div>
</body>
</html>