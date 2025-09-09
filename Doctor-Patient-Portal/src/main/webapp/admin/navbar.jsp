<%@ taglib uri="jakarta.tags.core" prefix="c" %>
 
 <%@page isELIgnored="false"%>
 <nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-sharp fa-solid fa-hospital"></i> Doctor Patient Portal</a>
		<!-- 		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-house-chimney-medical"></i> E-HOSPITAL</a> -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!-- original ul <ul class="navbar-nav me-auto mb-2 mb-lg-0"> -->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				
				<li class="nav-item"><a class="nav-link active" href="index.jsp"><i class="fa-solid fa-house-user"></i> HOME</a></li>
				<li class="nav-item"><a class="nav-link active" href="doctor.jsp"><i class="fa-solid fa-user-doctor"></i> DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active" href="view_doctor.jsp"><i class="fa-solid fa-list"></i> VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active" href="patient.jsp"><i class="fa-solid fa-wheelchair"></i> PATIENT</a></li>
				
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light  dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fa fa-universal-access"></i> Admin
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>

					</ul>
				</div>
			</form>

		</div>
	</div>
</nav>     
      