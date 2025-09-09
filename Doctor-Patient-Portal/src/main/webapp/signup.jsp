<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0px 0px 10px 1px maroon;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center"><i class="fa-solid fa-user-plus"></i> User Register</p>
					
					<!-- message print -->
						<!-- for success msg -->
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-3">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<!-- for error msg -->
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<!-- End of message print -->
					
					<form action="user_register" method="post">
						<div class="mb-3">
							<label class="form-label">Full Name</label>
							<input required name="fullname" type="text" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Email Address</label>
							<input required name="email" type="email" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Password</label>
							<input required name="password" type="password" class="form-control">
						</div>
						
						<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

