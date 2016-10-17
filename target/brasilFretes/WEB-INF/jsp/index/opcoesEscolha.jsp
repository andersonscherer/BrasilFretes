<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!-- Normalize -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/estilo_sistema/bootstrap.css" rel="stylesheet" type="text/css" >
    <!-- Owl -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
    <!-- Animate.css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/animate.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/font-awesome.min.css">
    <!-- Elegant Icons -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/et-icons.css">

    <!-- Main style -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/styleSistema.css">
    
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
	
    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
	<title>BrasilFretes - Opções de Cadastro</title>
</head>
<body>
    <div class="preloader">
        <img src="<%=request.getContextPath()%>/resources/imagens/loader.gif" alt="Preloader image">
    </div>
    <nav class="navbar">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="light white navbar-brand" href="<c:url value='/'/>"><img src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png" data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png" alt=""></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right main-nav">
                    <li><a href="modal1" data-toggle="modal" data-target="#modal1" class="btn btn-blue">Entrar</a></li>
                    <li><a href="<c:url value='/telaPrincipalCaminhoneiro'/>" class="btn btn-success">Cadastre-se</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="container">
            <div class="table">
                <div class="header-text">
                    <div class="texto-escolha-cadastro">
                        <h1><b>Deseja se cadastro como...</b></h1></div>
                    <div class="row">
                        <a href="<c:url value='/cadastroCaminhoneiro'/>"  class="btn btn-lg  btn-primary" role="button">Caminhoneiro</a>
                        <a href="<c:url value='/cadastroAgencia'/>" class="btn btn-lg  btn-info"  role="button">Agência de Fretes</a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="col-xs-12 copyright ">
        <p>Todos os Direitos Reservados &copy; 2016 BrasilFretes.com
            <p>
    </div>

    <!-- Inclusão do Modal -->

		<div class="modal fade" id="modal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content modal-popup">
					<h3 class="white">Como quer fazer Login ?</h3>
					<a href="<c:url value='/loginCaminhoneiro'/>"
						class="btn btn-primary">Camihoneiro</a> <a
						href="<c:url value='/loginAgencia'/>" class="btn btn-primary">Agência</a>
				</div>
			</div>
		</div>

    <!-- Holder for mobile navigation -->
    <div class="mobile-nav ">
        <a href="# " class="close-link "><i class="arrow_up "></i></a>
    </div>


    <!-- Scripts -->

    <script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/wow.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/typewriter.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.onepagenav.js "></script>
    <script src="<%=request.getContextPath()%>/resources/js/main.js "></script>

</body>
</html>