<%@ page import="com.db.DBConnect" %>
<%@ page import="com.dao.DoctorDAO" %>
<%@ page import="com.entity.Doctor" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Appointment Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
.my-bg-img {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/hospital1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

	<!-- if not login then log in first -->
	<c:if test="${empty userObj }">

		<c:redirect url="/user_login.jsp"></c:redirect>

	</c:if>

	<!-- start 1st Div -->

	<div class="container-fluid my-bg-img p-5">
		<!-- css background image -->
		<p class="text-center fs-2 text-white"></p>

	</div>

	<!-- end of 1st Div -->

	<!-- 2nd Div -->

	<div class="container-fluid p-3">
		<p class="fs-2"></p>

		<div class="row">



			<!-- col-2 -->
			<div class="col-md-9">
				<div class="card my-card">
					<div class="card-body">
						<p class="fw-bold text-center myP-color fs-4">Appointment
							List</p>

						

						<table class="table table-striped">
							<thead>
								<tr >
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Phone</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
								
								<%
								User user = (User) session.getAttribute("userObj");
								DoctorDAO dDAO = new DoctorDAO(DBConnect.getConn());

								AppointmentDAO appDAO = new AppointmentDAO (DBConnect.getConn());

								List<Appointment> list = appDAO.getAllAppointmentByLoginUser(user.getId());
								for (Appointment apptList : list) {
									Doctor doctor = dDAO.getDoctorById(apptList.getDoctorId());
								%>
								

								<tr>
									<%-- <th scope="row"><%= apptList.getId() %></th> --%>
									<td><%=apptList.getFullName()%></td>
									<td><%=apptList.getGender()%></td>
									<td><%=apptList.getAge()%></td>
									<td><%=apptList.getAppointmentDate()%></td>
									<%-- <td><%= apptList.getEmail()%></td> --%>
									<td><%=apptList.getPhone()%></td>
									<td><%=apptList.getDiseases()%></td>
									<td><%=doctor.getFullName()%></td>
									<%-- <td><%= apptList.getAddress()%></td> --%>
									<%-- <td><%= apptList.getUserId()%></td> --%>
									<td>
										<%
										if ("Pending".equals(apptList.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">Pending</a> <%
 										} else {
 												%> <%=apptList.getStatus()%> <%
 										}
 										%>
									</td>


								</tr>


								<%
								}
								%>


							</tbody>
						</table>

							



					</div>
				</div>

			</div>

			<!-- col-1 -->
			<div class="col-md-3 p-3">
				<!-- for Background image -->
				<!-- <img alt="" src="img/picDoc.jpg" width="500px" height="400px"> -->
				<img alt="" src="img/doct.jpg" width="250" height="">
			</div>



		</div>


	</div>

	<!-- 2nd Div -->


</body>
</html>