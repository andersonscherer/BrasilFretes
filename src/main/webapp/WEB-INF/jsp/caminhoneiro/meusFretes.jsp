<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
<link
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
<link href='http://fonts.googleapis.com/css?family=Buenard:700'
	rel='stylesheet' type='text/css'>

<title>Meus Fretes - BrasilFretes</title>
</head>
<body>

	<!--  wrapper -->
	<div id="wrapper">
		<!-- navbar top -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			id="navbar">
		<div class="navbar-header">
			<a class="light white navbar-brand"
				href="<c:url value='telaPrincipalCaminhoneiro'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""> </a>
		</div>
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a
				href="${linkTo[CaminhoneiroController].editarCadastro(usuario.caminhoneiro.codigo)}"
				data-toggle="tooltip" data-placement="bottom"
				title="Editar Cadastro"><i class="fa fa-user fa-3x"></i> </a></li>
			<li class="dropdown"><a
				href="${linkTo[CaminhoneiroController].logout}"
				data-toggle="tooltip" data-placement="bottom"
				title="Sair do sistema"> <i class="fa fa-sign-out fa-3x"></i></a></li>
		</ul>
		</nav>

		<nav class="navbar-default navbar-static-side" role="navigation">
		<!-- sidebar-collapse -->
		<div class="sidebar-collapse">
			<ul class="nav" id="side-menu">
				<li>
					<div class="user-section">
						<div class="user-info">
							<div class=white content>
								<h3>Olá !</h3>
							</div>
							<div class="user-text-online">
								<strong>${usuario.caminhoneiro.nome}</strong>
							</div>
						</div>
					</div>
				</li>
				<li class="selected"><a
					href="<c:url value='telaPrincipalCaminhoneiro'/>"><i
						class="fa fa-dashboard fa-fw"></i> Incial</a></li>
				<li><a href="<c:url value='/cadastroCaminhao'/>"><i
						class="fa fa-plus fa-fw"></i> Cadastrar Caminhão</a></li>
				<li><a href="<c:url value='/procurarFrete'/>"><i
						class="fa fa-search fa-fw"></i> Procurar Fretes</a></li>
				<li><a href="<c:url value='/acompanharPedido'/>"><i
						class="fa fa-truck" aria-hidden="true"></i> Acompanhar Pedidos</a></li>
				<li><a href="<c:url value='/meusFretes'/>"><i
						class="fa fa-list"></i> Meus Fretes</a></li>
			</ul>
		</div>
		</nav>
	</div>


	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Meus Fretes</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<strong>Veja aqui o Histórico de seus fretes.</strong>
							</div>
						</div>
						<br>
						<div class="container">
							<table class="table table-bordered">
								<thead>
									<tr class="success">
										<th>Codigo</th>
										<th>Agência</th>
										<th>Cidade origem</th>
										<th>Cidade destino</th>
										<th>Peso</th>
										<th>Valor</th>
										<th>Status</th>
									</tr>
								</thead>
								<tbody>
									<tr>
									<!-- freteList - vem do metodo que chamaa a tela meus fretes no caminhoneiro controller
									o nome freteList é imprementado pelo vraptor -->
										<c:forEach var="frete" items="${freteList}">
											<td><c:out value="${frete.codigo}" /></td>
											<td><c:out value="${frete.agencia.razaoSocial}" /></td>
											<td><c:out value="${frete.cidadeOrigem.nome}" /></td>
											<td><c:out value="${frete.cidadeDestino.nome}" /></td>
											<td><c:out value="${frete.peso}" /></td>
											<td><c:out value="${frete.valor}" /></td>
											<td><c:out value="${frete.statusFrete}" /></td>
										</c:forEach>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script>
		function formatar(mascara, documento) {
			var i = documento.value.length;
			var saida = mascara.substring(0, 1);
			var texto = mascara.substring(i)

			if (texto.substring(0, 1) != saida) {
				documento.value += texto.substring(0, 1);
			}

		}
	</script>

	<script type="text/javascript">
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		});
	</script>

</body>
</html>