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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
		<link rel="shortcut icon"href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

		<title>BrasilFretes - In�cio</title>
	</head>
<body>

	<!--  wrapper -->
	<div id="wrapper">
		<!-- navbar top -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar"> 
			<div class="navbar-header">
				<a class="light white navbar-brand"
					href="<c:url value='telaPrincipalCaminhoneiro'/>"><img
					src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
					alt="">
				</a>
			</div>
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a href="${linkTo[CaminhoneiroController].editarCadastro(usuario.caminhoneiro.codigo)}"> <i class="fa fa-user fa-3x"></i></a>
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
									<h3>Ol� !</h3>
								</div>
								<div class="user-text-online">
									<strong>${usuario.caminhoneiro.nome}</strong>
								</div>
							</div>
						</div>
					</li>
					<li class="selected"><a href="/telaPrincipalCaminhoneiro"><i class="fa fa-dashboard fa-fw"></i>Incial</a></li>
					<li><a href="<c:url value='/cadastroCaminhao'/>"><i class="fa fa-plus fa-fw"></i> Cadastrar Caminh�o</a></li>
					<li><a href="<c:url value='/procurarFrete'/>"><i class="fa fa-search fa-fw"></i>Procurar Fretes</a></li>
					<li><a href="<c:url value='/acompanharPedido'/>"><i class="fa fa-edit fa-fw"></i>Acompanhar Pedidos</a></li>
					<li><a href="<c:url value='/meusFretes'/>"><i class="fa fa-table fa-fw"></i>Meus Fretes</a></li>
				</ul>
			</div> 
		</nav>
	</div>
	
	<div id="wrapper">

		<div id="page-wrapper">
			<div class="row">
				<!-- page header-->
				<div class="col-lg-12">
					<h1 class="page-header">Procurar Fretes</h1>
				</div>
				<!-- end page header-->
			</div>
			<div class="row">
				<div class="col-xs-12">
					<!-- Line chart -->
					<div class="panel panel-primary">
						<div class="panel-heading">Use os Filtros para fazer a
							Pesquisa</div>
						<div class="panel-body">

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Estado
									:</label>
								<div class="col-md-10">
									<select id="txtgrupo" name="caminhoneiro.estado.codigo"
										class="form-control">
										<option selected="selected">Selecione</option>
										<c:forEach var="estado" items="${estados}">
											<option value="${estado.codigo}">${estado.nome}</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Cidade
									:</label>
								<div class="col-md-10">
									<select id="txtgrupo" name="caminhoneiro.cidade.codigo"
										class="form-control">
										<option selected="selected">Selecione</option>
										<c:forEach var="cidade" items="${cidades}">
											<option value="${cidade.codigo}">${cidade.nome}</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Tipo
									de Carroceria Necess�ria :</label>
								<div class="col-md-10">
									<select id="txtcodigo_unidade_id"
										name="caminhao.tipoCarroceria" class="form-control">
										<option selected="selected">Selecione</option>
										<option value="1">Ba� Alum�nio</option>
										<option value="2">Ba� Lonado</option>
										<option value="3">B�u Transporte de Bebidas</option>
										<option value="4">Ba� Frigir�fico</option>
										<option value="5">Basculante</option>
										<option value="6">Carroceria Carga Seca</option>
										<option value="7">Graneleira</option>
										<option value="8">Bitrem</option>
										<option value="8">Treminh�o</option>
									</select>
								</div>
							</div>

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Peso
									:</label>
								<div class="col-md-10">
									<select id="txtgrupo" name="txtgrupo" class="form-control">
										<option value="1">Higi�ne</option>
										<option value="2">Consumo</option>
										<option value="3">Limpesa</option>
										<option value="4">Material de Escrit�rio</option>
									</select>
								</div>
							</div>

							<div class="col-xs-12">
								<div class="col-xs-12 col-md-2 col-md-offset-4">
									<button type="button" class="btn btn-lg btn-success"
										href="index.html">Pesquisar</button>
								</div>
								<div class="col-xs-12 col-md-2">
									<button href="index.html" type="button"
										class="btn btn-lg btn-danger">Cancelar</button>
								</div>
							</div>


						</div>
					</div>
					<!--End Line chart -->
				</div>
			</div>
		</div>
		<!-- end page-wrapper -->

	</div>
	<!-- end wrapper -->


</body>
</html>