<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
<link href="./common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="container">
			<div class="row">
			<div class="col-12 my-4 mx-4 text-center">
				<h2>Add New Course</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-12 ml-4">
				<hr />
			<c:url value="/add-course" var="add"></c:url>
			<form action="${add}" class="form col-6" method="post">
		      	<div class="form-group">
		        <label for="">Course Name: </label>
		        <input type="text" name="coursename" required="required" placeholder="Enter Course Name" class="form-control" />
		        </div>
		        <div class="form-group">
		        	<label for="">Price: </label>
		        	<input type="text" name="price" required="required" class="form-control" />
		        </div>
		        <div class="form-group">
		        	<label for="">Level: </label>
		        	<select name="level" id="level" class="form-control">
		        		<option value="Basic">Basic</option>
		        		<option value="Intermediate">Intermediate</option>
		        		<option value="Advance">Advance</option>
		        	</select>
		        </div>
		        <div class="form-group">
		        	<div class="form-group">
		        		<label for="">Duration(Month): </label>
		        		<input type="number" name="duration" required="required" placeholder="Enter Duration" class="form-control" />
		        	</div>
		        </div>
		        <div class="form-group">
		        	<div class="form-group">
		        		<label for="">Start Date: </label>
		        		<input type="date" name="startdate" required="required" placeholder="Enter Start Date" class="form-control" />
		        	</div>
		        </div>
		        	<button type="submit" class="btn btn-outline-primary">Save</button>
		        	<button type="submit" class="btn btn-outline-danger float-right">Reset</button>
		       </form>
			</div>
		</div>
		 
		</div>
		
</body>
</html>