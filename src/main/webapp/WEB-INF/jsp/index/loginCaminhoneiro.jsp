<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Buenard:700' >
		<title>BrasilFretes - Login Caminhoneiro</title>
	</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-md-offset-4 text-center logo-margin ">
				<a class="light white navbar-brand" href="<c:url value='/'/>"><img
					src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
					data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
					alt=""></a>
			</div>
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Caminhoneiro. Faça login para entrar</h3>
					</div>
					<div class="panel-body">
						<c:if test="${not empty errors}">
							<div class="alert alert-danger alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<c:out value="${errors[0].message}" />
							</div>
						</c:if>
						<form role="form"
							action="${linkTo[IndexController].confereCaminhoneiro}"
							method="post">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" name="email"
										type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Senha" name="senha"
										type="password" value="">
								</div>
								<button type="submit" class="btn btn-lg btn-primary btn-block">Entrar</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>