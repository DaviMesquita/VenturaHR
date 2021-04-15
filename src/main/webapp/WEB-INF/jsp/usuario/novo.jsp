<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VenturaHR | Criar usuário</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Usuários</h2>
					<br>
					<div class="btn-group">
						<form action="/">
							<button type="submit">Voltar</button>
						</form>
					</div>
				</div>

				<div class="panel-body">

					<c:if test="${not empty mensagem}">
						<div class="alert alert-warning">
							<strong>Atenção!</strong> ${mensagem}
						</div>
					</c:if>

					<form action="/usuario/incluir" method="post">
						<div class="form-group">
							<label>Informe o Nome </label> <input type="text" required
								class="form-control" name="nome">
						</div>

						<div class="form-group">
							<label>Informe o Endereço </label> <input type="text"
								class="form-control" name="endereco">
						</div>

						<div class="form-group">
							<label>Informe o Telefone </label> <input type="text" required
								class="form-control" name="telefone">
						</div>

						<div class="form-group">
							<label>Informe o E-mail </label> <input type="email" required
								class="form-control" name="email">
						</div>

						<div class="form-group">
							<label>Informe a Senha</label> <input type="password" required
								class="form-control" name="senha">
						</div>

						<div class="form-group">
							<label>Informe o CPF </label> <input type="text" required
								class="form-control" name="cpf">
						</div>
						<div class="form-group">
							<label>Informe a Razão Social </label> <input type="text"
								class="form-control" name="razao_social">
						</div>
						<div class="form-group">
							<label>Informe o CNPJ </label> <input type="text"
								class="form-control" name="cnpj">
						</div>
						<div class="form-group">
							<label>Informe o Tipo de Usuário </label> <select
								class="form-control" name="tipo">
								<option value="A">Administrador</option>
								<option value="C">Candidato</option>
								<option value="E">Empresa</option>
							</select>
						</div>
						<button type="submit">Cadastrar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>