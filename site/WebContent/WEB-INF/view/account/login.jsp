<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<jsp:include page="../container/_link-css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../container/_header.jsp"></jsp:include>
	<main class="main">
		<div class=container>
			<div class="p-0 loginform">

				<h1 class="d-flex justify-content-center">Вхід</h1>
				<form:form name="form" method="post" modelAttribute="user">

					<div class="form-group row">
						<div class="col-12">
							<form:input path="email" type="email" class="form-control"
								placeholder="Почта" value="${user.email}" />
						</div>
					</div>

					<div class="form-group row">
						<div class="col-12">
							<form:input path="password" type="password" autocomplete="on" class="form-control" placeholder="Пароль"
								value="${user.password}" />
						</div>
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-block">Вхід</button>
					</div>
				</form:form>
			</div>

		</div>
	</main>
	<jsp:include page="../container/_scripts.jsp"></jsp:include>
</body>
</html>