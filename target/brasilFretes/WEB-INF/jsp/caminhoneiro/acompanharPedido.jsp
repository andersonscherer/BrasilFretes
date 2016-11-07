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
				<li class="dropdown">
					<a href="${linkTo[CaminhoneiroController].logout}"> <i class="fa fa-sign-out fa-3x"></i></a>
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
		        <div class="col-md-10 col-md-offset-2">
           <div class="tabelaFretes" style="
    margin-top: 50px;">
            <div class="panel panel-primary panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Acompanhar Pedidos</h3>
                  </div>
                </div>
              </div>
              
              <div class="panel-body">
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
                        <th align="center"><em  class="fa fa-info-circle"> Ação</em></th>
                    </tr> 
                  </thead>
	                  <tbody>
	                          <tr>
	                            <td>Chapecó - SC</td>
	                            <td>BRFoods</td>
	                            <td>Florianópolis - SC</td>
	                            <td>Aurora</td>                                  
	                            <td>150,00</td>
	                            <td>Frete bom</td>
	                            <td>ABERTO</td>
	                            <td align="center">
									<a class="btn btn-danger"><i class="fa fa-sign-out" aria-hidden="true"></i> Descandidatar-se</a>                            
	                            </td>                            
	                          </tr>
	                 </tbody>
                </table>
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