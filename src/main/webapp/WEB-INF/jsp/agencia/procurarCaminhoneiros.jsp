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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">

<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
<link href='http://fonts.googleapis.com/css?family=Buenard:700'
	rel='stylesheet' type='text/css'>

<title>Fretes em Execução/Aberto - BrasilFretes</title>
</head>
<body>

	<!--  wrapper -->
	<div id="wrapper">
		<!-- navbar top -->
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
				<li class="selected"><a href="<c:url value='telaPrincipalAgencia'/>"><i class="fa fa-dashboard fa-fw"></i> - Incial</a></li>
				<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-map-marker fa-fw"></i> - Fretes em Execução/Aberto</a></li>
				<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> - Cadastro de Frete</a></li>
				<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-table fa-fw"></i> - Meu historico de Fretes</a></li>
				<li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-edit fa-fw"></i> - Procurar Caminhoneiros</a></li>
			</ul>
		</div>
		</nav>
	</div>

	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<!--Titulo Painel-->
				<div class="col-lg-12">
					<h1 class="page-header">Procurar Caminhoneiros</h1>
				</div>
				<!--Final Titulo Painel-->
			</div>
			<!-- Linha -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<h4>Procure por Caminhoneiros com os Filtros Disponíveis</h4>
							</div>
						</div>
						<div class="panel-body">
						<div class="container">
							<form class="form-inline" action="${linkTo[AgenciaController].pesquisar}" method="post">
								<div class="form-group">
									<label for="cidade">Cidade:</label>
									<select id="cidade" name="cidade.codigo" class="form-control">
										<c:forEach var="cidade" items="${cidades}">
											<option value="${cidade.codigo}" 
												<c:if test="${cidadeEscolhida.codigo eq cidade.codigo}"> selected="selected"</c:if>>
												${cidade.nome} - ${cidade.uf}
											</option>
										</c:forEach>
									</select>
								</div>
								<button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i> Pesquisar</button>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Final da Linha -->
			<div class="table-responsive">

				<div class="panel panel-primary panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">Caminhoneiros</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr class="success">
									<th>Nome</th>
									<th>Telefone</th>
									<th>E-Mail</th>
									<th WIDTH=100>Opções</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="caminhoneiro" items="${caminhoneiroList}">
								<tr>
									<td>
										<c:out value="${caminhoneiro.nome}" />
									</td>
									<td>
										<c:out value="${caminhoneiro.telefone}" />
									</td>
									<td>
										<c:out value="${caminhoneiro.email}" />
									</td>
									<td align="center">
										<a class="btn btn-primary btn-sm" href="#"><i class="fa fa-user" aria-hidden="true"></i> Selecionar caminhoneiro</a>                            
	                            	</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- end page-wrapper -->



	</div>
	<!-- end wrapper -->
</body>
</html>