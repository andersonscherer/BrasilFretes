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

		<title>BrasilFretes - Início</title>
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
									${usuario.caminhoneiro.codigo}
								</div>
							</div>
						</div>
					</li>
					<li class="selected"><a href="#"><i
							class="fa fa-dashboard fa-fw"></i>Incial</a></li>
					<li><a href="<c:url value='/cadastroCaminhao'/>"><i
							class="fa fa-plus fa-fw"></i> Cadastrar Caminhão</a></li>
					<li><a href="<c:url value='/procurarFrete'/>"><i
							class="fa fa-search fa-fw"></i>Procurar Fretes</a></li>
					<li><a href="<c:url value='/acompanharPedido'/>"><i
							class="fa fa-edit fa-fw"></i>Acompanhar Pedidos</a></li>
					<li><a href="<c:url value='/meusFretes'/>"><i
							class="fa fa-table fa-fw"></i>Meus Fretes</a></li>
				</ul>
			</div> 
		</nav>
	</div>

	<div id="wrapper">
		<!-- navbar top -->

		<!-- end navbar side -->
		<!--  page-wrapper -->
		<div id="page-wrapper">

			<div class="row">
				<!--page header-->
				<div class="col-lg-12">
					<h1 class="page-header">Acompanhar Pedido</h1>
				</div>
				<!--end page header-->
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<h4>Veja os fretes que você se candidatou e a situação de cada um.</h4>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal"
								action="${linkTo[CaminhoneiroController].salvarCaminhao}"
								method="post">
								<fieldset>
									
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