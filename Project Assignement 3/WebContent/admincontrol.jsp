<%
	if(session.getAttribute("admin")==null){
		response.sendRedirect("Home.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<script src="https://kit.fontawesome.com/cd6f276843.js" crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
.sec{
padding: 30px;
  background: LemonChiffon;
  color: DarkOrange;
  font-size: 30px;
}
.box{
  width: 95%;
  background: Ivory;
  border: 15px solid Olive;
  padding: 80px;
  margin: 20px;
}
.button {
  font-weight: bold;
  border: none;
  color: Darkgreen;
  padding: 15px 50px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5% 2px;
  cursor: pointer;
}
.button1 {background-color: MediumAquamarine;}	
</style>
</head>
<body>
<jsp:include page="HeaderAdmin.jsp" />
<div class="sec">
<h1 align="center">Admin Panel</h1>
	<div class="box">
			<h3 class="text-center">View Account List</h3>
			<hr>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>SNO</th>
						<th>Username</th>
						<th>Status</th>
						<th>operation</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="shop" items="${listShop}">
						<tr>
							<td><c:out value="${shop.id}" /></td>
							<td><c:out value="${shop.uname}" /></td>
							<td><a href="view?id=<c:out value='${shop.id}' />"><i class="fa-solid fa-hurricane"></i> View</a>
							<td><a href="viewedit?id=<c:out value='${shop.id}' />"><i class="fa-solid fa-pencil"></i>Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${shop.id}' />"><i class="fa-solid fa-trash-can"></i>Delete</a></td>
								
						</tr>
			</c:forEach>
				</tbody>

			</table>
		</div>
	</div>

<jsp:include page="Footerpart.jsp" />
</body>
</html>