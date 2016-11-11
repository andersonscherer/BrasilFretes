<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
		
		<title>Cadastro de Frete - BrasilFretes</title>
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
				<li class="dropdown">
					<a href="${linkTo[AgenciaController].editarCadastroAgencia(agencia.agencia.codigo)}"data-toggle="tooltip" data-placement="bottom" title="Editar Dados"> 
					<i class="fa fa-user fa-3x"></i></a>
				</li>
				<li class="dropdown">
					<a href="${linkTo[AgenciaController].logoutAgencia}" data-toggle="tooltip" data-placement="bottom" title="Sair do sistema">
					<i class="fa fa-sign-out fa-3x"></i></a>
				</li>
			</ul>
		</nav>

		<nav class="navbar-default navbar-static-side" role="navigation">
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
				<li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a></li>
			</ul>
		</div>
		</nav>
	</div>

	<div id="wrapper">
		<div id="page-wrapper"><br><br>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${not empty msgSucesso}">
						<div class="alert alert-success" role="alert">
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<c:out value="${msgSucesso}" />
						</div>
					</c:if>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<strong>Cadastre seu Frete aqui</strong>
							</div>
						</div>
						<div class="table-responsive">
							<form class="form-horizontal"
								action="${linkTo[AgenciaController].salvarFrete}" method="post">

									<input type="hidden" name="frete.agencia.codigo"
										value="${agencia.agencia.codigo}">

									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Cidade de Origem</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="frete.cidadeOrigem.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome}-
														${cidade.uf}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Local
											de Retirada</label>
										<div class="col-md-4">
											<input id="textinput" name="frete.localRetirada"
												placeholder="Local de Retirada do Frete"
												class="form-control input-md" required="" type="text">
										</div>
									</div>


									<div class="form-group">
										<label class="col-md-4 control-label" for="txtgrupo"
											required="">Cidade de Destino</label>
										<div class="col-md-4">
											<select id="txtgrupo" name="frete.cidadeDestino.codigo"
												class="form-control">
												<option selected="selected">Selecione</option>
												<c:forEach var="cidade" items="${cidades}">
													<option value="${cidade.codigo}">${cidade.nome}-
														${cidade.uf}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Local
											de Entrega</label>
										<div class="col-md-4">
											<input id="textinput" name="frete.localEntrega"
												placeholder="Local de Entrega do Frete"
												class="form-control input-md" required="" type="text">
										</div>
									</div>

									<!-- Select Basic -->
									<div class="form-group">
										<label class="col-md-4 control-label"
											for="txtcodigo_unidade_id">Tipo Carroceria</label>
										<div class="col-md-4">
											<select id="txtcodigo_unidade_id" name="frete.tipoCarroceria"
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
										<label class="col-md-4 control-label" for="textinput">Peso(KG)</label>
										<div class="col-md-2">
											<input id="textinput" name="frete.peso"
												placeholder="000.00KG" class="form-control input-md"
												required="" type="text">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Valor
											do Frete (R$)</label>
										<div class="col-md-2">
											<input id="textinput" name="frete.valor" placeholder="0.00"
												class="form-control input-md" required="" type="text">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label" for="textinput">Observações</label>
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
												<option value="NÃO">NÃO</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-6">
											<button type="submit" class="btn btn-md btn-success">
												<i class="fa fa-check" aria-hidden="true"></i> Cadastrar
												Frete
											</button>
										</div>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	 <script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
     <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
     <script type="text/javascript">
		$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	});
	</script>
	
</body>
</html>