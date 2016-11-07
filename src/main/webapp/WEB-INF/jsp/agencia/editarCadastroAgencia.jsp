<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
		<link href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css"rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">
		<link rel="shortcut icon"href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

		<title>Fretes em Execução/Aberto - BrasilFretes</title>
	</head>
<body>

	<!--  wrapper -->
	<div id="wrapper">
		<!-- navbar top -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar"> 
			<div class="navbar-header">
				<a class="light white navbar-brand"
					href="<c:url value='telaPrincipalAgencia'/>"><img
					src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
					alt="">
				</a>
			</div>
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a href="${linkTo[AgenciaController].editarCadastroAgencia(agencia.agencia.codigo)}"> <i class="fa fa-user fa-3x"></i></a>
				</li>
				<li class="dropdown">
					<a href="${linkTo[AgenciaController].logoutAgencia}"> <i class="fa fa-sign-out fa-3x"></i></a>
				</li>
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
					<li class="selected"><a href="<c:url value='telaPrincipalAgencia'/>"><i class="fa fa-dashboard fa-fw"></i> Incial</a></li>
					<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-briefcase fa-fw"></i> Fretes em Execução/Aberto</a></li>
					<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> Cadastro de Frete</a></li>
					<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-list-ul"></i> Meu historico de Fretes</a></li>
	                <li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a>
                    </li>
				</ul>
			</div> 
		</nav>
	</div>

	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Editar Cadastro</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<strong>Atualize o seus dados, e fique sempre por dentro das
									novidades. Obs.: Apenas campos com ( * ) são campos editáveis</strong>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal" method="post"
								action="${linkTo[AgenciaController].alterarAgencia(a)}">
								<fieldset>
									
									 <input type="hidden" name="agencia.codigo" value="${a.codigo}">
									
									<div class="form-group">
										<label class="col-md-2 control-label" for="razao-social">Razão social:</label>
										<div class="col-md-4">
											<input id="razao-social" name="agencia.razaoSocial" class="form-control input-md" disabled="disabled" required=""
												value="${a.razaoSocial}" type="text"></input>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-2 control-label" for="cnpj">C.N.P.J:</label>
										<div class="col-md-4">
											<input id="cnpj" name="agencia.cnpj" placeholder="C.N.P.J" class="form-control input-md"
											required="" type="text" value="${a.cnpj}">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-2 control-label" for="cnpj">Responsável:</label>
										<div class="col-md-4">
											<input id="cnpj" name="agencia.responsavel" placeholder="Placa do Veículo" class="form-control input-md"
											 required="" type="text" value="${a.responsavel}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label" for="txtgrupo">Cidade</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="caminhoneiro.cidade.codigo"
												class="form-control" >
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome} - ${cidade.uf}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								
									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-2 control-label" for="email">Seu e-mail: *</label>
										<div class="col-md-4">
											<input id="email" name="agencia.email" placeholder="Digite seu E-mail" class="form-control input-md" 
												required="" type="text" value="${a.email}">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label" for="senha">Sua Senha: *</label>
										<div class="col-md-4">
											<input id="senha" name="agencia.senha" placeholder="Digite sua Senha" class="form-control input-md"
												required="" type="password" value="${a.senha}">
										</div>
									</div>

									<div class="col-xs-12 col-md-offset-2">
											<button type="button" class="btn btn-md btn-success"
												name="_method" value="PUT"><i class="fa fa-check" aria-hidden="true"></i> Confirmar</button>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end page-wrapper -->
	</div>
	<!-- end wrapper -->
	<script
		src="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/jquery-1.10.2.js"></script>
</body>
</html>