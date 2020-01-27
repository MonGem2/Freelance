<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD</title>
<jsp:include page="../container/_link-css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../container/_header.jsp"></jsp:include>

	<main class="main">
		<div class="container">

			<h1 class="d-flex justify-content-center">Профайл користувача</h1>
			
			<li> ${email} </li>


		</div>
	</main>

	<jsp:include page="../container/_scripts.jsp"></jsp:include>
</body>
</html>