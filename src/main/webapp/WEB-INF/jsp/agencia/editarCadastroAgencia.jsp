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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/styleSistema.css">
		<link rel="shortcut icon"href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

		<title>Fretes em Execução/Aberto - BrasilFretes</title>
	</head>
<body>

	<div id="wrapper">
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
					<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> Cadastro de Frete</a></li>
					<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-briefcase fa-fw"></i> Fretes em Execução/Aberto</a></li>
					<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-list-ul"></i> Meu historico de Fretes</a></li>
	                <li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a>
                    </li>
				</ul>
			</div> 
		</nav>
	</div>

	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row"><br><br>
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="panel-title">
								<strong><i class="fa fa-cogs" aria-hidden="true"></i>
									Obs.: Apenas campos com ( * ) são campos editáveis</strong>
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
											<input id="razao-social" name="agencia.razaoSocial" class="form-control input-md" required=""
												value="${a.razaoSocial}" type="text"></input>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-2 control-label" for="cnpj">C.N.P.J:</label>
										<div class="col-md-4">
											<input id="cnpj" name="agencia.cnpj" placeholder="C.N.P.J" class="form-control input-md"
											required="" type="text" value="${a.cnpj}" disabled="disabled">
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

									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-4">
											<button type="submit" class="btn btn-success" name="_method"
												value="PUT">
												<i class="fa fa-check" aria-hidden="true"></i> Confirmar
											</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	 <script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
     <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
     <script type="text/javascript">
		$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	});
	</script>
	
</body>
</html>