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
											<h3>Ol� !</h3>
										</div>
										<div class="user-text-online">
											<strong>${agencia.agencia.razaoSocial}</strong>
										</div>
									</div>
								</div>
							</li>
							<li class="selected"><a href="<c:url value='telaPrincipalAgencia'/>"><i class="fa fa-dashboard fa-fw"></i> Incial</a></li>
							<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-briefcase fa-fw"></i> Fretes em Execu��o/Aberto</a></li>
							<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> Cadastro de Frete</a></li>
							<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-list-ul"></i> Meu historico de Fretes</a></li>
			                <li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a>
		                    </li>
						</ul>
					</div> 
				</nav>
			</div>
		
			<div id="wrapper">
		        <div class="col-md-10 col-md-offset-2">
		           <div class="tabelaFretes" style="
		 			   margin-top: 50px;">
		            <div class="panel panel-primary panel-table">
		              <div class="panel-heading">
		                <div class="row">
		                  <div class="col col-xs-6">
		                    <h3 class="panel-title">Meus Fretes</h3>
		                  </div>
		                </div>
		              </div>
		              <div class="panel-body">
		                <table class="table table-striped table-bordered table-list">
		                  <thead>
		                    <tr class="success">
		                        <th class="hidden-xs">Id do Frete</th>
		                        <th>Cidade Origem</th>
		                        <th>Cidade Destino</th>
		                        <th>Valor do Frete (R$)</th>                        
		                        <th>Status</th>
		                    </tr> 
		                  </thead>
		                 	 <tbody>
								<c:forEach var="frete" items="${freteList}">
									<tr>							    
										<td>
											<c:out value="${frete.codigo}" />
										</td>
										<td>
											<c:out value="${frete.cidadeOrigem.nome}" />
										</td>	
										<td>
											<c:out value="${frete.cidadeDestino.nome}" />
										</td>	
										<td>
											<c:out value="${frete.valor}" />
										</td>	
										<td>
											<c:out value="${frete.statusFrete}" />
										</td>	
									</tr>
								</c:forEach>
		                        </tbody>
		                </table>
		              </div>
		            </div>
		        </div>
			</div>
		</div>
	</body>
</html>