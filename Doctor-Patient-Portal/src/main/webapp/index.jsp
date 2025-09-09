<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	/*box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);*/
		box-shadow: 0px 0px 10px 1px maroon;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	
	
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hospital.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2">Some Key Features Of Our Doctor
			Patient Portal</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">11000+ Healing Hands</p>
								<p>Largest network of the world's finest and brightest
									medical experts who provide compassionate care using
									outstanding expertise.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Most Advance Health Care Technology</p>
								<p>E-Hospitals has been the pioneer in bringing
									ground-breaking health care technologies to Bangladesh.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Best Clinical Outcomes</p>
								<p>Leveraging its vast medical expertise & technological
									advantage, E-Hospitals has consistently delivered best in class
									clinical outcomes.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">500+ Pharmacies</p>
								<p>E-Hospital Pharmacy is our first, largest and most
									trusted branded pharmacy network, with over 50s0 plus outlets
									covering the entire nation.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img alt="" src="img/doct.jpg" height="415px" width="500px">
			</div>
		</div>
	</div>
	
	<hr>
	
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5"> Dr. Jhon</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Brad</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Jennifer</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Maria</p>
						<p class="fs-7">(Dean)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="component/footer.jsp" %>	
</body>
</html>

