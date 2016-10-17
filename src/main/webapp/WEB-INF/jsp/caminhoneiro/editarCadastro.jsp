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
<title>BrasilFretes - Início</title>

<body>

    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
			<a class="light white navbar-brand" href="<c:url value='telaPrincipalCaminhoneiro'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""></a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-3x"></i>
                    </a>
                    <!-- dropdown-messages -->
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-success">Jonney Depp</span></strong>
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="<c:url value='/editarCadastro/usuario.codigo'/>"><i class="fa fa-user fa-fw"></i>Editar dados Pessoais</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Configurações da Conta</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>Sair</a>
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
                                <div class=white content><strong>Olá </strong></div>
                                <div class="user-text-online">
								<h5>${usuario.caminhoneiro.nome}</h5>
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                    <li class="sidebar-search">
                        <!-- search section-->
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Procurar...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!--end search section-->
                    </li>
				<li class="selected"><a href="<c:url value='/telaPrincipalCaminhoneiro'/>"><i
						class="fa fa-dashboard fa-fw"></i>Incial</a></li>
				<li><a href="<c:url value='/cadastroCaminhao'/>"><i
						class="fa fa-plus fa-fw"></i> Cadastrar Caminhão</a></li>
				<li><a href="<c:url value='/procurarFrete'/>"><i
						class="fa fa-search fa-fw"></i>Procurar Fretes</a></li>
				<li><a href="<c:url value='/acompanharPedido'/>"><i class="fa fa-edit fa-fw"></i>Acompanhar
						Pedidos</a></li>
				<li><a href="<c:url value='/meusFretes'/>"><i class="fa fa-table fa-fw"></i>Meus
						Fretes</a></li>
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
                    <h1 class="page-header">Editar Cadastro</h1>
                </div>
                <!--end page header-->
            </div>
            <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Atualize o seus dados, e fique sempre por dentro das novidades</h4></div>
                        </div>
                        <div class="table-responsive">
                            <form class="form-horizontal">
                                <fieldset>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Nome Completo:</label>
                                        <div class="col-md-2">
                                            <input id="textinput" name="" placeholder="Placa do Veículo" class="form-control input-md" disabled="disabled" required value="${caminhoneiro.getNome()" type="text">
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">C.P.F:</label>
                                        <div class="col-md-2">
                                            <input id="textinput" name="textinput" placeholder="Placa do Veículo" class="form-control input-md" disabled="disabled" required="" type="text">
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Data Nascimento:</label>
                                        <div class="col-md-2">
                                            <input id="textinput" name="textinput" placeholder="Placa do Veículo" class="form-control input-md" disabled="disabled" required="" type="text">
                                        </div>
                                    </div>

                                    <!-- Select Basic -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="txtgrupo">Estado : </label>
                                        <div class="col-md-4">
                                            <select id="txtgrupo" name="txtgrupo" class="form-control">
                                                <option value="1">Higiêne</option>
                                                <option value="2">Consumo</option>
                                                <option value="3">Limpesa</option>
                                                <option value="4">Material de Escritório</option>
                                            </select>
                                        </div>
                                    </div>

                                    <!-- Select Basic -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="txtcodigo_unidade_id">Cidade : </label>
                                        <div class="col-md-4">
                                            <select id="txtcodigo_unidade_id" name="txtcodigo_unidade_id" class="form-control">
                                                <option value="UND">Unidade</option>
                                                <option value="CX">Caixa</option>
                                                <option value="PC">Pacote</option>
                                                <option value="FAR">Fardo</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="txtgrupo">Tipo de sua Carteira</label>
                                        <div class="col-md-4">
                                            <select id="txtgrupo" name="txtgrupo" class="form-control">
                                                <option>Selecione</option>
                                                <option value="1">A</option>
                                                <option value="2">B</option>
                                                <option value="3">D</option>
                                                <option value="4">E</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Número da C.N.H</label>
                                        <div class="col-md-4">
                                            <input id="textinput" name="textinput" placeholder="Digite o número de sua C.N.H" class="form-control input-md" required="" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Cursos em Gargas perigosas ou Específicas</label>
                                        <div class="col-md-5">
                                            <label>
                                                <input type="radio" name="opcao" value="perigosaSim"> - SIM</label>
                                            <label>
                                                <input type="radio" name="opcao" value="perigosaNao"> - NÃO</label>
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Seu E-mail:</label>
                                        <div class="col-md-4">
                                            <input id="textinput" name="textinput" placeholder="Digite seu E-mail" class="form-control input-md" required="" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Sua Senha:</label>
                                        <div class="col-md-4">
                                            <input id="textinput" name="textinput" placeholder="Digite sua Senha" class="form-control input-md" required="" type="password">
                                        </div>
                                    </div>


                                    <!-- Botões para Cadastrar o Frete-->
                                    <div class="botoes-cadastra-frete col-xs-12">
                                        <div class="col-xs-12 col-md-2 col-md-offset-4  botaoEntrarCadCaminhoneiro">
                                            <button type="button" class="btn btn-success" href="index.html">Confirmar Edição</button>
                                        </div>
                                        <div class="col-xs-12 col-md-2 botaoCancelarCadCaminhoneiro">
                                            <button href="index.html" type="button" class="btn btn-danger">Cancelar</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>

                            <div class="finalizacao">
                                <fieldset>

                                </fieldset>
                            </div>
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