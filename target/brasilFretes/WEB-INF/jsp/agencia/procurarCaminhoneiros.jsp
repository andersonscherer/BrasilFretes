<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Normalize -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css"
	rel="stylesheet" type="text/css">
<!-- Owl -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
<!-- Animate.css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
<!-- Elegant Icons -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
<!-- Main style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">

<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">

<link href='http://fonts.googleapis.com/css?family=Buenard:700'
	rel='stylesheet' type='text/css'>
<title>BrasilFretes - In�cio</title>

<body>

	<!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top"
			role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"
				data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
			<a class="light white navbar-brand" href="<c:url value='telaPrincipalAgencia'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""></a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown"
				href="#">
                        <i class="fa fa-envelope fa-3x"></i>
                    </a>
                    <!-- dropdown-messages -->
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span
									class=" label label-success">Jonney Depp</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                    </ul>
                    <!-- end dropdown-messages -->
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown"
				href="#">
                        <i class="fa fa-bell fa-3x"></i>
                    </a>
                    <!-- dropdown alerts-->
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i>New Comment
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i>Message Sent
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- end dropdown-alerts -->
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown"
				href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i
							class="fa fa-user fa-fw"></i>Editar dados Pessoais</a>
                        </li>
                        <li><a href="#"><i
							class="fa fa-gear fa-fw"></i>Configura��es da Conta</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i
							class="fa fa-sign-out fa-fw"></i>Sair</a>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
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
								<strong>Ol� </strong>
							</div>
                                <div class="user-text-online">
								<h5>NOME DA AGENCIA CARALHO</h5>
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                    <li class="sidebar-search">
                        <!-- search section-->
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control"
							placeholder="Procurar...">
                            <span class="input-group-btn">
                                <button class="btn btn-default"
								type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!--end search section-->
                    </li>
                    <li class="selected">
                        <a href="#"><i class="fa fa-dashboard fa-fw"></i>Incial</a>
                    </li>
                    <li>
                        <a href="<c:url value='/cadastroDeFrete'/>"><i
						class="fa fa-plus fa-fw"></i>Cadastrar um Frete</a>
                    </li>
                    <li>
                        <a href="<c:url value='/fretesEmAberto'/>"><i
						class="fa fa-search fa-fw"></i>Fretes em Aberto</a>
                    </li>
                    <li>
                        <a href="<c:url value='/historicoAgenciaFretes'/>"><i
						class="fa fa-table fa-fw"></i>Meus Fretes</a>
                    </li>
                    <li>
                        <a
					href="<c:url value='/procurarCaminhoneiros'/>"><i
						class="fa fa-edit fa-fw"></i>Procurar Caminhoneiros</a>
                    </li>
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>

        <!-- end page-wrapper -->

    </div>
    
    <!-- end wrapper -->


	<div id="wrapper">
	<!-- navbar top -->

	<!-- end navbar side -->
	<!--  page-wrapper -->
	<div id="page-wrapper">

		<div class="row">
			<!--page header-->
			<div class="col-lg-12">
				<h1 class="page-header">Procurar Caminhoneiros</h1>
			</div>
			<!--end page header-->
		</div>
		<!-- row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="panel-title">
							<h4>Procure por Caminhoneiros com os Filtros Dispon�veis</h4>
						</div>
					</div>
					<div class="table-responsive">
						<form class="form-horizontal">
							<fieldset>

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Estado
									:</label>
								<div class="col-md-10">
									<select id="txtgrupo" name="caminhoneiro.estado.codigo"
										class="form-control">
										<option selected="selected">Selecione</option>
										<c:forEach var="estado" items="${estados}">
											<option value="${estado.codigo}">${estado.nome}</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Cidade
									:</label>
								<div class="col-md-10">
									<select id="txtgrupo" name="caminhoneiro.cidade.codigo"
										class="form-control">
										<option selected="selected">Selecione</option>
										<c:forEach var="cidade" items="${cidades}">
											<option value="${cidade.codigo}">${cidade.nome}</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Tipo
									de Carroceria Necess�ria :</label>
								<div class="col-md-10">
									<select id="txtcodigo_unidade_id"
										name="caminhao.tipoCarroceria" class="form-control">
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

							<div class="col-xs-6 form-group">
								<label class="col-md-2 control-label" for="txtgrupo">Peso
									:</label>
								<div class="col-md-10">
									<select id="txtgrupo" name="txtgrupo" class="form-control">
										<option value="1">Higi�ne</option>
										<option value="2">Consumo</option>
										<option value="3">Limpesa</option>
										<option value="4">Material de Escrit�rio</option>
									</select>
								</div>
							</div>

							<div class="col-xs-12">
								<div class="col-xs-12 col-md-2 col-md-offset-4">
									<button type="button" class="btn btn-lg btn-success"
										href="index.html">Pesquisar</button>
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
	<!-- end page-wrapper -->

</div>
<!-- end wrapper -->
</body>
</html>