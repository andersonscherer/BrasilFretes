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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">

		<link rel="shortcut icon"href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

		<title>Fretes em Execu��o/Aberto - BrasilFretes</title>
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
									<h3>Ol� !</h3>
								</div>
								<div class="user-text-online">
									<strong>${agencia.agencia.razaoSocial}</strong>
								</div>
							</div>
						</div>
					</li>
					<li class="selected"><a href="<c:url value='telaPrincipalAgencia'/>"><i class="fa fa-dashboard fa-fw"></i> - Incial</a></li>
					<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-map-marker fa-fw"></i> - Fretes em Execu��o/Aberto</a></li>
					<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> - Cadastro de Frete</a></li>
					<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-table fa-fw"></i> - Meu historico de Fretes</a></li>
                    <li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-edit fa-fw"></i> - Procurar Caminhoneiros</a>
                    </li>
				</ul>
			</div> 
		</nav>
	</div>

	<div id="wrapper">
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
					<c:if test="${not empty msgSucesso}">
						<div class="alert alert-success" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<c:out value="${msgSucesso}" />
						</div>
					</c:if>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<h4>Aqui voc� vai colocar os dados do Frete.</h4>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal" action="${linkTo[AgenciaController].salvarFrete}" method="post">
								<fieldset>
									<input type="hidden" name="frete.agencia.codigo" value="${agencia.agencia.codigo}">
									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Cidade de Origem</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="frete.cidadeDestino.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome} - ${cidade.uf}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Cidade de Destino</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="frete.cidade.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome} - ${cidade.uf}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
										<label class="col-md-4 control-label"
											for="txtcodigo_unidade_id">Tipo Carroceria : </label>
										<div class="col-md-4">
											<select id="txtcodigo_unidade_id" name="frete.tipoCarroceria"
												class="form-control">
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

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Peso
											(KG):</label>
										<div class="col-md-2">
											<input id="textinput" name="frete.peso"
												placeholder="000.00KG" class="form-control input-md"
												required="" type="text">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Valor
											da Encomenda (R$)</label>
										<div class="col-md-2">
											<input id="textinput" name="frete.valor" placeholder="0.00"
												class="form-control input-md" required="" type="text">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Observa��es</label>
										<div class="col-md-6">
											<textarea class="form-control" rows="5"
												name="frete.observacoes"></textarea>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label">Carga Perigosa ?</label>
										<div class="col-md-2">
											<select name="frete.perigosa" class="form-control">
												<option value="SIM">SIM</option>
												<option value="N�O">N�O</option>
											</select>
										</div>
									</div>

								</fieldset>
								<div class="finalizacao">
									<fieldset>
										<!-- Form Name -->
										<legend>Finaliza��o do Frete</legend>
										<!-- Bot�es para Cadastrar o Frete-->
										<div class="col-xs-12 botoes-cadastra-frete">
											<div class="col-xs-12 col-md-3 col-md-offset-4">
												<button type="submit" class="btn btn-lg btn-success">Ok!
													Cadastrar</button>
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