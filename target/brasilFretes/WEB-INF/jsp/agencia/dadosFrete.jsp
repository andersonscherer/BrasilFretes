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
		<link rel="shortcut icon"href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

		<title>Dados do Frete - BrasilFretes</title>
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
	                <li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a>
                    </li>
				</ul>
			</div> 
		</nav>
	</div>
	
	<div id="wrapper">
        <div class="col-md-10 col-md-offset-2">
           <div class="tabelaFretes" style=" margin-top: 50px;">
            <div class="panel panel-primary panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-lg-12">
                    <h3 class="panel-title"><i class="fa fa-list" aria-hidden="true"></i>
                    Dados do Frete nº - <b>{1505}</b></h3>
                  </div>
                </div>
              </div>
              
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th>Id do Frete</th>
                        <th>Cidade Origem</th>
                        <th>Cidade Destino</th>
                        <th>Valor do Frete (R$)</th>                        
                        <th>Status</th>
                        <th>Ações</th>
                    </tr> 
                  </thead>
                  <tbody>
                     <tr>
                       <td class="hidden-md">1</td>
                       <td>Chapecó - SC</td>
                       <td>Florianópolis - SC</td>
                       <td>159,50</td>                                  
                       <td>ABERTO</td>   
                       <td align="center">
						   <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#modal1">
						   <em class="fa fa-trash-o"></em></a>                       
                       </td>                         
                    </tr>
                 </tbody>
                </table>
              </div>
             </div>
            </div>
           </div>
              
          <div class="col-md-10 col-md-offset-2">
           <div class="tabelaFretes">
            <div class="panel panel-primary panel-table">
                <div class="panel-heading">
               	 	<div class="row">
                 		 <div class="col col-xs-6">
                   			 <h3 class="panel-title">
                   			 <i class="fa fa-users" aria-hidden="true"></i>  Caminhoneiros Interessados neste Frete</h3>
                 		 </div>	
                	</div>
               </div>
               
			
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th class="hidden-xs">Id do Caminhoneiro</th>
                        <th>Nome</th>
                        <th>Cidade</th>
                        <th>Telefone</th>                        
                        <th>E-Mail</th>
                        <th>Ações</th>
                    </tr> 
                  </thead>
                  <tbody>
                       <tr>
                          <td class="hidden-md">1</td>
                          <td>Mário Quintana de Souza Abreu</td>
                          <td>Florianópolis - SC</td>
                          <td>(49) 3222-5689</td>                                  
                          <td>marioquintana@hotmail.com</td>   
                       	  <td align="center">
                             <a class="btn btn-primary"><i class="fa fa-check" aria-hidden="true"> Escolher Caminhoneiro</i></a>                              
                          </td>                                                   
                      </tr>
                 </tbody>
                </table>
              </div>
            </div>
        </div>
	</div>
</div>

    <!-- Inclusão do Modal -->

		<div class="modal fade" id="modal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content modal-popup">
					<h3 class="white">Tem Certeza que deseja Exluir o Frete ?</h3>
					<a href="<c:url value='/loginCaminhoneiro'/>"
						class="btn btn-primary">Sim</a> <a
						href="<c:url value='/loginAgencia'/>" class="btn btn-danger">Não</a>
				</div>
			</div>
		</div>

    <!-- Scripts -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/wow.min.js"></script>

</body>
</html>