<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css">
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
<link rel='stylesheet' type='text/css'
	href='http://fonts.googleapis.com/css?family=Buenard:700'>
<title>Fretes em Execução/Aberto - BrasilFretes</title>
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
				href="${linkTo[AgenciaController].editarCadastroAgencia(agencia.agencia.codigo)}">
					<i class="fa fa-user fa-3x"></i>
			</a></li>
			<li class="dropdown"><a
				href="${linkTo[AgenciaController].logoutAgencia}"> <i
					class="fa fa-sign-out fa-3x"></i></a></li>
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
								<strong>${agencia.agencia.razaoSocial}</strong>
							</div>
						</div>
					</div>
				</li>
				<li class="selected"><a
					href="<c:url value='telaPrincipalAgencia'/>"><i
						class="fa fa-dashboard fa-fw"></i> Incial</a></li>
				<li><a href="<c:url value='/fretesEmAberto'/>"><i
						class="fa fa-briefcase fa-fw"></i> Fretes em Execução/Aberto</a></li>
				<li><a href="<c:url value='/cadastroDeFrete'/>"><i
						class="fa fa-plus fa-fw"></i> Cadastro de Frete</a></li>
				<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i
						class="fa fa-list-ul"></i> Meu historico de Fretes</a></li>
				<li><a href="<c:url value='/procurarCaminhoneiros'/>"><i
						class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a>
			</ul>
		</div>
		</nav>
	</div>

	<div id="wrapper">
		<div class="col-md-10 col-md-offset-2">
			<div class="tabelaFretes" style="margin-top: 50px;">
				<div class="panel panel-success panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">
									<li class="fa fa-cogs"></li> Fretes em Execução
								</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th>Id do Frete</th>
									<th>Nome do Caminhoneiro</th>
									<th>Cidade Origem</th>
									<th>Cidade Destino</th>
									<th>Valor do Frete (R$)</th>
									<th>Status</th>
									<th>Ações</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1505</td>
									<td>João Paulo</td>
									<td>Chapecó - SC</td>
									<td>Florianópolis - SC</td>
									<td>159,50</td>
									<td>EXECUÇÃO</td>
									<td><a class="btn btn-primary btn-sm"><i
											class="fa fa-check" aria-hidden="true"></i> Finalizar </a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">
									<i class="fa fa-briefcase" aria-hidden="true"></i> Fretes em
									Aberto que receberam candidatos
								</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th><b>Id do Frete</b></th>
									<th>Cidade Origem</th>
									<th>Cidade Destino</th>
									<th>Valor do Frete (R$)</th>
									<th>Status</th>
									<th>Ações</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="aberto" items="${fretesAbertos}">
									<tr>
										<td><b></b><c:out value="${aberto.codigo}"/></b></td>
										<td><c:out value="${aberto.cidadeOrigem.nome}" /></td>
										<td><c:out value="${aberto.cidadeDestino.nome}" /></td>
										<td><c:out value="${aberto.valor}" /></td>
										<td><c:out value="${aberto.statusFrete}" /></td>
										<td WIDTH=190><a href="<c:url value='/dadosFrete'/>"
											class="btn btn-primary btn-sm" title="Verificar candidatos"><i
												class="fa fa-eye" aria-hidden="true"></i> Visualizar </a> <a
											class="btn btn-danger btn-sm" title="Excluir frete"><i
												class="fa fa-times" aria-hidden="true"></i> Excluir </a>
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

	<!-- Inclusão do Modal -->

	<div class="modal fade" id="modal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<h3 class="white">Como quer fazer Login ?</h3>
				<a href="<c:url value='/loginCaminhoneiro'/>"
					class="btn btn-primary">Camihoneiro</a> <a
					href="<c:url value='/loginAgencia'/>" class="btn btn-primary">Agência</a>
			</div>
		</div>
	</div>

</body>
</html>