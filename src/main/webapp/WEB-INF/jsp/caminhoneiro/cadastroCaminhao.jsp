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

		<title>Cadastro De Caminhão - BrasilFretes</title>
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
									<h3>Olá !</h3>
								</div>
								<div class="user-text-online">
									<strong>${usuario.caminhoneiro.nome}</strong>
								</div>
							</div>
						</div>
					</li>
					<li class="selected"><a href="<c:url value='telaPrincipalCaminhoneiro'/>"><i class="fa fa-dashboard fa-fw"></i> - Incial</a></li>
					<li><a href="<c:url value='/cadastroCaminhao'/>"><i class="fa fa-plus fa-fw"></i> - Cadastrar Caminhão</a></li>
					<li><a href="<c:url value='/procurarFrete'/>"><i class="fa fa-search fa-fw"></i> - Procurar Fretes</a></li>
					<li><a href="<c:url value='/acompanharPedido'/>"><i class="fa fa-edit fa-fw"></i> - Acompanhar Pedidos</a></li>
					<li><a href="<c:url value='/meusFretes'/>"><i class="fa fa-table fa-fw"></i> - Meus Fretes</a></li>
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

									<input type="hidden" value="${usuario.caminhoneiro.codigo}" name="caminhao.caminhoneiro.codigo">

									<!-- Button (Double) -->
									<div class="form-group">
										<label class="col-md-4 control-label" for="btnsalvar"></label>
										<div class="col-md-8">
											<button id="btnsalvar" name="btnsalvar" type="submit"
												class="btn btn-success">Salvar</button>
										</div>
									</div>
								</fieldset>
							</form> <!-- Final do Formulário de Cadastro -->
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
</html></html>