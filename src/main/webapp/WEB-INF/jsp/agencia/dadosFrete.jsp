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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Buenard:700'>
		
		<title>Dados do Frete - BrasilFretes</title>
	</head>
<body>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			id="navbar">
		<div class="navbar-header">
			<a class="light white navbar-brand"
				href="<c:url value='telaPrincipalAgencia'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""> </a>
		</div>
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a
				href="${linkTo[AgenciaController].editarCadastroAgencia(agencia.agencia.codigo)}"
				data-toggle="tooltip" data-placement="bottom" title="Editar Dados">
					<i class="fa fa-user fa-3x"></i>
			</a></li>
			<li class="dropdown"><a
				href="${linkTo[AgenciaController].logoutAgencia}"
				data-toggle="tooltip" data-placement="bottom"
				title="Sair do sistema"> <i class="fa fa-sign-out fa-3x"></i></a></li>
		</ul>
		</nav>

		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="side-menu">
				<li>
					<div class="user-section">
						<div class="user-info">
							<div class=white content>
								<h3>Olá !</h3>
							</div>
							<div class="user-text-online">
								<strong>${agencia.agencia.razaoSocial}</strong>
							</div>
						</div>
					</div>
				</li>
				<li class="selected"><a href="<c:url value='telaPrincipalAgencia'/>"><i class="fa fa-dashboard fa-fw"></i> Incial</a></li>
				<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> Cadastro de Frete</a></li>
				<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-briefcase fa-fw"></i> Fretes em Execução/Aberto</a></li>
				<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-list-ul"></i> Meu historico de Fretes</a></li>
				<li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a></li>
			</ul>
		</div>
		</nav>
	</div>

	<div id="wrapper">
		<div class="col-md-10 col-md-offset-2">
			<div class="tabelaFretes" style="margin-top: 50px;">
				<div class="panel panel-primary panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<strong class="panel-title"> <i class="fa fa-users"
									aria-hidden="true"></i> Caminhoneiros Interessados neste Frete
								</strong>
							</div>
						</div>
					</div>

					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th class="hidden-xs">Código</th>
									<th>Nome</th>
									<th>Cidade</th>
									<th>Telefone</th>																		
									<th>E-mail</th>
									<th>Caminhão</th>
									<th>Ações</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="candidato" items="${candidatoFreteList}">
									<tr>
										<td><c:out value="${candidato.codigo}" /></td>
										<td><c:out value="${candidato.caminhoneiro.nome}" /></td>
										<td><c:out value="${candidato.caminhoneiro.cidade.nome} - ${candidato.caminhoneiro.cidade.uf}" /></td>
										<td><c:out value="${candidato.caminhoneiro.telefone}" /></td>
										<td><c:out value="${candidato.caminhoneiro.email}" /></td>
										<td><c:out value="${candidato.caminhoneiro.caminhao.modeloCaminhao}" /></td>
										<td align="center">
											<a class="btn btn-primary btn-xs" href="${linkTo[AgenciaController].defineCaminhoneiro}?codFrete=${frete.codigo}&caminhoneiro.codigo=${candidato.caminhoneiro.codigo}"><i
												class="fa fa-check" aria-hidden="true"></i> Escolher
												Caminhoneiro 
											</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		});
	</script>

</body>
</html>