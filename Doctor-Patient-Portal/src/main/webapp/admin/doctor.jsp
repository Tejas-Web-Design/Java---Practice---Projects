<%@ page import="com.dao.SpecialistDAO"%>
<%@ page import="com.db.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.Specialist"%>
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Adding Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.my-card {
	/*box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);*/
	box-shadow: 0px 0px 10px 1px maroon;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-5 offset-4">
				<div class="card my-card">
					<div class="card-body">
						<p class="fs-3 text-center text-danger">
							<i class="fa-solid fa-plus"></i><i class="fa-solid fa-user-doctor"></i> Add Doctor
						</p>

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

						<!-- bootstrap form -->
						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input
									name="fullName" type="text" placeholder="Enter full name"
									class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Date of Birth</label> <input
									name="dateOfBirth" type="date" placeholder="Enter DOB"
									class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									name="qualification" type="text"
									placeholder="Enter qualification" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									class="form-control" name="specialist">
									<option disabled="disabled" selected="selected">---Select---</option>

									<%
									SpecialistDAO spDAO = new SpecialistDAO(DBConnect.getConn());
									List<Specialist> spList = spDAO.getAllSpecialist();
									for (Specialist sp : spList) {
									%>
									<option>
										<%=sp.getSpecialistName()%>
									</option>
									<%
									}
									%>

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email address</label> <input
									name="email" type="email" placeholder="Enter Email"
									class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Phone</label> <input name="phone"
									type="text" placeholder="Enter mobile number"
									class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" placeholder="Enter password"
									class="form-control">
							</div>

							<button type="submit" class="btn btn-danger text-white col-md-12">Register</button>
						</form>
						<!-- <br>Don't have an account? <a href="#!"
							class="text-decoration-none">create one</a> -->
						<!-- end of bootstrap form -->

					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>