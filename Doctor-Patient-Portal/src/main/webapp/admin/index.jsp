<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
 
 <%@page isELIgnored="false"%>
 <%@ page import="com.db.DBConnect" %>
 <%@ page import="com.dao.DoctorDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0px 0px 10px 1px maroon;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<c:if test="${empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5">
	<p class="text-center fs-3">Admin Dashboard</p>
	<c:if test="${not empty errorMsg }">
		<p class="text-center text-danger fs-5">${errorMsg}</p>
		<c:remove var="errorMsg" scope="session" />
	</c:if>
	<c:if test="${not empty successMsg }">
		<p class="text-center text-success fs-3">${successMsg}</p>
		<c:remove var="successMsg" scope="session" />
	</c:if>
	
	<% 
		DoctorDAO docDAO = new DoctorDAO(DBConnect.getConn());
		int totalNumberOfDoctor = docDAO.countTotalDoctor();
		int totalNumberOfUser = docDAO.countTotalUser();
		int totalNumberOfAppointment = docDAO.countTotalAppointment();
		int totalNumberOfSpecialist = docDAO.countTotalSpecialist();
		%>
	
	
	
	<div class="row">
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-md fa-3x"></i><br>
					<p class="fs-4 text-center">
					Doctor <br><%= totalNumberOfDoctor %>
					</p>
				</div>
			</div>
		</div>
	
	
	
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-circle fa-3x"></i><br>
					<p class="fs-4 text-center">
					User <br><%= totalNumberOfUser %>
					</p>
				</div>
			</div>
		</div>
	
	
	
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-calendar-check fa-3x"></i><br>
					<p class="fs-4 text-center"> 
					Total Appointment <br><%= totalNumberOfAppointment %>
					</p>
				</div>
			</div>
		</div>
	
	
	
		<div class="col-md-4 mt-2">
			<div class="card paint-card" data-bs-toggle="modal"
				data-bs-target="#exampleModal">
				<div class="card-body text-center text-success">
					<i class="fa-solid fa-user-doctor fa-3x"></i><br>
					<p class="fs-4 text-center">
					Specialist <br><%= totalNumberOfSpecialist %>
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<!-- specialist modal -->



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-danger" id="exampleModalLabel">Add Specialist</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label class="form-label">Enter Specialist Name</label> <input type="text"
								name="specialistName" placeholder="Enter Specialist Name" class="form-control" />
						</div>
						<div class="text-center mt-2">
							<button type="submit" class="btn btn-outline-danger ">Add</button>
						</div>

					</form>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>

	<!-- end of specialist modal -->
	
</body>
</html>