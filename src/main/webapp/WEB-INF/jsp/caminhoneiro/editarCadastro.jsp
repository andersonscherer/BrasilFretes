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
		<div id="page-wrapper">
			<div class="row">
				<!--page header-->
				<div class="col-lg-12">
					<h1 class="page-header">Editar Cadastro</h1>
				</div>
				<!--end page header-->
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<h4>Atualize o seus dados, e fique sempre por dentro das
									novidades</h4>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal" method="post"
								action="${linkTo[CaminhoneiroController].editarCadastro(caminhoneiro)}">
								<fieldset>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Nome
											Completo:</label>
										<div class="col-md-2">
											<input id="textinput" name="caminhoneiro.nome"
												class="form-control input-md" disabled="disabled" required
												value="${caminhoneiro.getNome()}" type="text"></input>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">C.P.F:</label>
										<div class="col-md-2">
											<input id="textinput" name="textinput"
												placeholder="Placa do Veículo" class="form-control input-md"
												disabled="disabled" required="" type="text">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Data
											Nascimento:</label>
										<div class="col-md-2">
											<input id="textinput" name="textinput"
												placeholder="Placa do Veículo" class="form-control input-md"
												disabled="disabled" required="" type="text">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo">Estado</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="caminhoneiro.estado.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="estado" items="${estados}">
													<option value="${estado.codigo}">${estado.nome}</option>
												</c:forEach>
											</select>
										</div>

									</div>
									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo">Cidade</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="caminhoneiro.cidade.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo">Tipo
											de sua Carteira</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="txtgrupo" class="form-control">
												<option>Selecione</option>
												<option value="1">A</option>
												<option value="2">B</option>
												<option value="3">D</option>
												<option value="4">E</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Número
											da C.N.H</label>
										<div class="col-md-4">
											<input id="textinput" name="textinput"
												placeholder="Digite o número de sua C.N.H"
												class="form-control input-md" required="" type="text">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label">Cursos em Gargas
											perigosas ou Específicas</label>
										<div class="col-md-5">
											<label> <input type="radio" name="opcao"
												value="perigosaSim"> - SIM
											</label> <label> <input type="radio" name="opcao"
												value="perigosaNao"> - NÃO
											</label>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Seu
											E-mail:</label>
										<div class="col-md-4">
											<input id="textinput" name="textinput"
												placeholder="Digite seu E-mail"
												class="form-control input-md" required="" type="text">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Sua
											Senha:</label>
										<div class="col-md-4">
											<input id="textinput" name="textinput"
												placeholder="Digite sua Senha" class="form-control input-md"
												required="" type="password">
										</div>
									</div>


									<!-- Botões para Cadastrar o Frete-->
									<div class="col-xs-12 botoes-cadastra-frete">
										<div class="col-xs-12 col-md-3 col-md-offset-4">
											<button type="button" class="btn btn-lg btn-success"
												href="index.html">Confirmar Edição</button>
										</div>
										<div class="col-xs-12 col-md-2">
											<button href="index.html" type="button"
												class="btn btn-lg btn-danger">Cancelar</button>
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
	<script
		src="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/jquery-1.10.2.js"></script>
</body>
</html>