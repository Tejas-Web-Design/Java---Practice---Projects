<%@page import="com.db.DBConnect" %>
<%@page import="com.dao.DoctorDAO" %>
<%@page import="com.entity.Doctor" %>
<%@page import="com.dao.AppointmentDAO" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard Page</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${empty doctorObj }">

		<c:redirect url="../doctor_login.jsp"></c:redirect>

	</c:if>
	<div class="container p-5">
		<p class="text-center text-success fs-3">Doctor DashBoard</p>

		<%
		
		
		DoctorDAO docDAO = new DoctorDAO(DBConnect.getConn());
		int totalNumberOfDoctor = docDAO.countTotalDoctor();
		
		//get current login doctor object from session
		Doctor currentLoginDoctor = (Doctor)session.getAttribute("doctorObj");
		AppointmentDAO appointmentDAO = new AppointmentDAO(DBConnect.getConn());
		int totalAppointments = appointmentDAO.countAppointmentsByDoctor(currentLoginDoctor.getId());
		
		%>

		<div class="row mt-4">
    <!-- Doctor Count -->
    <div class="col-md-5 offset-md-1">
        <div class="card my-card">
            <div class="card-body text-center text-success">
                <i class="fa-solid fa-user-doctor fa-3x"></i><br>
                <p class="fs-4 text-center">
                    Doctor <br><%= totalNumberOfDoctor %>
                </p>
            </div>
        </div>
    </div>

    <!-- Total Appointments -->
    <div class="col-md-5">
        <div class="card my-card">
            <div class="card-body text-center text-success">
                <i class="fa-solid fa-calendar-check fa-3x"></i><br>
                <p class="fs-4 text-center">
                    Total Appointments <br><%= totalAppointments %>
                </p>
            </div>
        </div>
    </div>
</div>
		
			
			
		
		
		

	</div>
	
</body>
</html>