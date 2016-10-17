<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Normalize -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css"
	rel="stylesheet" type="text/css">
<!-- Owl -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
<!-- Animate.css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
<!-- Elegant Icons -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
<!-- Main style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">

<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">

<link href='http://fonts.googleapis.com/css?family=Buenard:700'
	rel='stylesheet' type='text/css'>
<title>BrasilFretes - Cadastro de Caminhão</title>
</head>
<body>
	<!--  wrapper -->
	<div id="wrapper">
		<!-- navbar top -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			id="navbar"> <!-- navbar-header -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="light white navbar-brand"
				href="<c:url value='telaPrincipalCaminhoneiro'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""></a>
		</div>
		<!-- end navbar-header --> <!-- navbar-top-links -->
		<ul class="nav navbar-top-links navbar-right">
			<!-- main dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-3x"></i>
			</a> <!-- dropdown-messages -->
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong><span class=" label label-success">Jonney
										Depp</span></strong> <span class="pull-right text-muted"> <em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
				</ul> <!-- end dropdown-messages --></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-3x"></i>
			</a> <!-- dropdown alerts-->
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i>New Comment
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i>Message Sent
							</div>
					</a></li>
				</ul> <!-- end dropdown-alerts --></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-3x"></i>
			</a> <!-- dropdown user-->
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i>Editar
							dados Pessoais</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i>Configurações
							da Conta</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>Sair</a>
					</li>
				</ul> <!-- end dropdown-user --></li>
			<!-- end main dropdown -->
		</ul>
		<!-- end navbar-top-links --> </nav>
		<!-- end navbar top -->

		<!-- navbar side -->
		<nav class="navbar-default navbar-static-side" role="navigation">
		<!-- sidebar-collapse -->
		<div class="sidebar-collapse">
			<!-- side-menu -->
			<ul class="nav" id="side-menu">
				<li>
					<!-- user image section-->
					<div class="user-section">
						<div class="user-info">
							<div class=white content>
								<strong>Olá </strong>
							</div>
							<div class="user-text-online">
								<h5>${usuario.caminhoneiro.nome}</h5>
							</div>
						</div>
					</div> <!--end user image section-->
				</li>
				<li class="sidebar-search">
					<!-- search section-->
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Procurar...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div> <!--end search section-->
				</li>
				<li class="selected"><a href="<c:url value='/telaPrincipalCaminhoneiro'/>"><i
						class="fa fa-dashboard fa-fw"></i>Incial</a></li>
				<li><a href="<c:url value='/cadastroCaminhao'/>"><i
						class="fa fa-plus fa-fw"></i> Cadastrar Caminhão</a></li>
				<li><a href="<c:url value='/procurarFrete'/>"><i
						class="fa fa-search fa-fw"></i>Procurar Fretes</a></li>
				<li><a href="<c:url value='/acompanharPedido'/>"><i class="fa fa-edit fa-fw"></i>Acompanhar
						Pedidos</a></li>
				<li><a href="<c:url value='/meusFretes'/>"><i class="fa fa-table fa-fw"></i>Meus
						Fretes</a></li>


			</ul>
			<!-- end side-menu -->
		</div>
		<!-- end sidebar-collapse --> </nav>

		<!-- end page-wrapper -->

	</div>

	<!-- end wrapper -->


	<div id="wrapper">
		<!-- navbar top -->

		<!-- end navbar side -->
		<!--  page-wrapper -->
		<div id="page-wrapper">

			<div class="row">
				<!--page header-->
				<div class="col-lg-12">
					<h1 class="page-header">Cadastro de Caminhão</h1>
				</div>
				<!--end page header-->
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<h4>Nesta opção você pode cadastrar um novo
									caminhão,caminhão que você irá usar para fazer os fretes aqui
									dispostos.</h4>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal"
								action="${linkTo[CaminhoneiroController].salvarCaminhao}"
								method="post">
								<fieldset>
									<!-- Select Basic -->
									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo">Marca
											: </label>
										<div class="col-md-4">
											<select id="txtgrupo" name="caminhao.marcaCaminhao"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="marcaCaminhao" items="${marcasCaminhao}">
													<option value="${marcaCaminhao.codigo}">${marcaCaminhao.nome}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Modelo
											do seu Caminhão:</label>
										<div class="col-md-4">
											<input type="text" placeholder="Digite o Modelo"
												class="form-control input-xs"
												aria-describedby="basic-addon1"
												name="caminhao.modeloCaminhao">
										</div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
										<label class="col-md-4 control-label"
											for="txtcodigo_unidade_id">Tipo Carroceria : </label>
										<div class="col-md-4">
											<select id="txtcodigo_unidade_id"
												name="caminhao.tipoCarroceria" class="form-control">
												<option selected="selected">Selecione</option>
												<option value="1">Baú Alumínio</option>
												<option value="2">Baú Lonado</option>
												<option value="3">Báu Transporte de Bebidas</option>
												<option value="4">Baú Frigirífico</option>
												<option value="5">Basculante</option>
												<option value="6">Carroceria Carga Seca</option>
												<option value="7">Graneleira</option>
												<option value="8">Bitrem</option>
												<option value="8">Treminhão</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Placa
											Caminhão:</label>
										<div class="col-md-2">
											<input id="textinput" name="caminhao.placa"
												placeholder="Digite a Placa" class="form-control input-xs"
												maxlength="8" type="text"
												onkeypress="formatar('###-####', this)"
												onkeydown="formatar('###-####', this)"
												onkeyup="formatar('###-####', this)">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Cód.
											R.N.T.R.C:</label>
										<div class="col-md-2">
											<input id="textinput" name="caminhao.codRntrc"
												placeholder="RNTRC do seu Caminhão"
												class="form-control input-xs" maxlength="12" type="text"
												onkeypress="formatar('###-########', this)"
												onkeydown="formatar('###-########', this)"
												onkeyup="formatar('###-########', this)">
										</div>
									</div>

									<!-- Button (Double) -->
									<div class="form-group">
										<label class="col-md-4 control-label" for="btnsalvar"></label>
										<div class="col-md-8">
											<button id="btnsalvar" name="btnsalvar"
												class="btn btn-success">Salvar</button>
											<button id="btncancelar" name="btncancelar"
												class="btn btn-danger">Cancelar</button>
										</div>
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
</body>
</html>