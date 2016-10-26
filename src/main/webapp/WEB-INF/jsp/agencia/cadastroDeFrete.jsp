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
					href="<c:url value='telaPrincipalAgencia'/>"><img
					src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
					alt="">
				</a>
			</div>
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a href="${linkTo[AgenciaController].editarCadastroAgencia(agencia.agencia.codigo)}"> <i class="fa fa-user fa-3x"></i></a>
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
					<li class="selected"><a href="/"><i class="fa fa-dashboard fa-fw"></i>Incial</a></li>
					<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i>Cadastro de Frete</a></li>
					<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-edit fa-fw"></i>Fretes em Aberto</a></li>
					<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-table fa-fw"></i>Meus Fretes</a></li>
                    <li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-edit fa-fw"></i>Procurar Caminhoneiros</a>
                    </li>
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
					<h1 class="page-header">Cadastro de Frete</h1>
				</div>
				<!--end page header-->
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<h4>Aqui você vai colocar os dados do Frete.</h4>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal">
								<fieldset>
								
									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Estado de Origem</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="agencia.estado.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="estado" items="${estados}">
													<option value="${estado.codigo}">${estado.nome}</option>
												</c:forEach>
											</select>
										</div>

									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Cidade de Origem</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="agencia.cidade.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Estado de Destino</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="agencia.estado.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="estado" items="${estados}">
													<option value="${estado.codigo}">${estado.nome}</option>
												</c:forEach>
											</select>
										</div>

									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Cidade de Destino</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="agencia.cidade.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
										<label class="col-md-4 control-label"
											for="txtcodigo_unidade_id">Tipo Carroceria : </label>
										<div class="col-md-4">
											<select id="txtcodigo_unidade_id" name="caminhao.tipoCarroceria"
												class="form-control">
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

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Peso
											(KG):</label>
										<div class="col-md-2">
											<input id="textinput" name="textinput"
												placeholder="Placa do Veículo" class="form-control input-md"
												required="" type="text">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Valor
											da Encomenda (R$)</label>
										<div class="col-md-2">
											<input id="textinput" name="textinput"
												placeholder="Cód. R.N.T.R.C" class="form-control input-md"
												required="" type="text">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Observações</label>
										<div class="col-md-6">
											<textarea class="form-control" rows="5"></textarea>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label">Carga Perigosa ?</label>
										<div class="col-md-5">
											<label> <input type="radio" name="opcao"
												value="perigosaSim"> - SIM
											</label> <label> <input type="radio" name="opcao"
												value="perigosaNao"> - NÃO
											</label>
										</div>
									</div>

								</fieldset>
								<div class="finalizacao">
									<fieldset>
										<!-- Form Name -->
										<legend>Finalização do Frete</legend>
										<!-- Botões para Cadastrar o Frete-->
										<div class="col-xs-12 botoes-cadastra-frete">
											<div class="col-xs-12 col-md-3 col-md-offset-4">
												<button type="button" class="btn btn-lg btn-success"
													href="index.html">Ok! Cadastrar</button>
											</div>
											<div class="col-xs-12 col-md-2">
												<button href="index.html" type="button"
													class="btn btn-lg btn-danger">Cancelar</button>
											</div>
										</div>
									</fieldset>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>