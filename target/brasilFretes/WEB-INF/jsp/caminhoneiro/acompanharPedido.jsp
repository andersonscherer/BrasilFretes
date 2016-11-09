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

		<title>Acompanhar Pedido - BrasilFretes</title>
	</head>
<body>

	<div id="wrapper">
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
					<a href="${linkTo[CaminhoneiroController].editarCadastro(usuario.caminhoneiro.codigo)}" 
					data-toggle="tooltip" data-placement="bottom" title="Editar Cadastro"><i class="fa fa-user fa-3x"></i>
					</a>
				</li>
				<li class="dropdown">
					<a href="${linkTo[CaminhoneiroController].logout}" data-toggle="tooltip" data-placement="bottom" title="Sair do sistema">
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
									<strong>${usuario.caminhoneiro.nome}</strong>
								</div>
							</div>
						</div>
					</li>
					<li class="selected"><a href="<c:url value='telaPrincipalCaminhoneiro'/>"><i class="fa fa-dashboard fa-fw"></i> Incial</a></li>
					<li><a href="<c:url value='/cadastroCaminhao'/>"><i class="fa fa-plus fa-fw"></i> Cadastrar Caminhão</a></li>
					<li><a href="<c:url value='/procurarFrete'/>"><i class="fa fa-search fa-fw"></i> Procurar Fretes</a></li>
					<li><a href="<c:url value='/acompanharPedido'/>"><i class="fa fa-truck" aria-hidden="true"></i> Acompanhar Pedidos</a></li>
					<li><a href="<c:url value='/meusFretes'/>"><i class="fa fa-list"></i> Meus Fretes</a></li>
				</ul>
			</div> 
		</nav>
	</div>

	<div id="wrapper">
		<div class="col-md-10 col-md-offset-2">
           <div class="tabelaFretes" style="margin-top: 50px;">
            <div class="panel panel-primary panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <strong class="panel-title">
                    <i class="fa fa-search-plus" aria-hidden="true"></i> Acompanhar Pedidos</strong>                 
                  </div>
                </div>
              </div>
              
              <div class="panel-body">
              	 <span class="pull-right">
                  	<a href="<c:url value='/procurarFrete'/>" class="btn btn-primary btn-sm"><i class="fa fa-plus fa-fw"></i> Candidatar em outro frete</a>
                  </span><br><br>
              	
              	<c:if test="${not empty msgSucesso}">
						<div class="alert alert-success" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<c:out value="${msgSucesso}" />
						</div>
				</c:if>
              	
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr class="success">
                        <th>Cidade Origem</th>
                        <th>Local Retirada</th>
                        <th>Cidade Destino</th>
                        <th>Local Entrega</th>
                        <th>Valor do Frete (R$)</th>                        
                        <th>Observaçoes</th>
                        <th>Status</th>
                    </tr> 
                  </thead>
	                  <tbody>
						<c:forEach var="candidato" items="${candidatoFreteList}">
							<tr>							    
								<td>
									<c:out value="${candidato.frete.cidadeOrigem.nome}" />
								</td>
								<td>
									<c:out value="${candidato.frete.localRetirada}" />
								</td>								
								<td>
									<c:out value="${candidato.frete.cidadeDestino.nome}" />
								</td>
								<td>
									<c:out value="${candidato.frete.localEntrega}" />
								</td>									
								<td>
									<c:out value="${candidato.frete.valor}" />
								</td>																	
								<td>
									<c:out value="${candidato.frete.observacoes}" />
								</td>
								<td>
									<c:out value="${candidato.frete.statusFrete}" />
								</td>							
							</tr>
						</c:forEach>
	                 </tbody>
                </table>
              </div>
            </div>
        </div>
	</div>
		<!-- end page-wrapper -->
	</div>

	<script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
     <script type="text/javascript">
		$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	});
	</script>

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