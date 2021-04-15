<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VenturaHR | Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Login</h2>
					<br>
					<div class="btn-group">
						<form action="/usuario">
							<button type="submit">Novo usuário</button>
						</form>
					</div>
				</div>

				<div class="panel-body">
					<c:if test="${not empty mensagem}">
						<div class="alert alert-warning">
							<strong>Atenção!</strong> ${mensagem}
						</div>
					</c:if>

					<form action="/usuario/login" method="post">
						<div class="form-group">
							<label>Informe o e-mail </label> <input type="email" required
								class="form-control" name="email">
						</div>

						<div class="form-group">
							<label>Informe a senha </label> <input type="password" required
								class="form-control" name="senha">
						</div>
						<div class="form-group">
							<label>Informe o Tipo de Usuário </label> <select
								class="form-control" name="tipo">
								<option value="A">Administrador</option>
								<option value="C">Cliente</option>
								<option value="E">Empresa</option>
							</select>
						</div>

						<button type="submit">Acessar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>