<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/bootstrap.css" >
	    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/animate.css">
	    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
	    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/et-icons.css">
	    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/styleSistema.css">
	    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
	    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
	    
		<title>BrasilFretes.com</title>
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
                <a class="navbar-brand" href="<c:url value='/'/>"><img src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png" data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png" alt=""></a>
            </div>
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right main-nav">
                    <li><a href="#nossoservico">Nosso Servi�o</a></li>
                    <li><a href="#comofunciona">Como Funciona</a></li>
                    <li><a href="#quemsomos">A BrasilFretes</a></li>
                    <li><a href="#contato">Contato</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue">Entrar</a></li>
                    <li><a href="<c:url value='/opcoesCadastro'/>" class="btn btn-success">Cadastre-se</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <header id="intro">
        <div class="container">
            <div class="table">
                <div class="header-text">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h3 class="light white">Bem Vindo</h3>
                            <h1 class="white typed">BrasilFretes.com</h1>
                            <span class="typed-cursor">|</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section>
        <div class="container">
            <div class="row intro-tables">
                <div class="col-md-6">
                    <div class="intro-table intro-table-hover">
                        <h3 class="white heading hide-hover">Para voc� Empresa</h3>
                        <h3 class="white heading hide-hover">Cadastre seus fretes aqui</h3>
                        <div class="bottom">
                            <h4 class="white heading small-heading no-margin regular">Registre-se agora!</h4>
                            <a href="<c:url value='/cadastroAgencia'/>" class="btn btn-white-fill expand">Registrar-se</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="intro-table intro-table-hover">
                        <h3 class="white heading hide-hover">Para voc� Caminheiro</h3>
                        <h3 class="white heading hide-hover">Obtenha muitos fretes a disposi��o AQUI!</h3>
                        <div class="bottom">
                            <h4 class="white heading small-heading no-margin regular">Registre-se agora!</h4>
                            <a href="<c:url value='/cadastroCaminhoneiro'/>" class="btn btn-white-fill expand">Registrar-se</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="nossoservico" class="section section-padded">
        <div class="container">
            <div class=" row text-center title">
                <h2>Nosso Servi�o ?</h2>
                <h4 class="light muted"><p>O transporte de cargas rodovi�rio � a modalidade de transporte mais expressiva do Brasil e os gargalos estruturais da infraestrutura log�stica nacional s�o sentidas em toda a economia. Os caminhoneiros aut�nomos, correspondem a 950 mil dos 2 milh�es de caminh�es que realizam opera��es de transportes no pa�s. </p>
				<p>A <b>BrasilFretes</b> atrav�s da tecnologia busca revolucionar esse importante setor, facilitando o encontro entre caminhoneiros, transportadoras, agenciadoras e log�stica de empresas. Nossos usu�rios conseguem otimizar seus ganhos em fun��o da rede de mais de 11.000 cadastrados e da agilidade e praticidade de nosso sistema. O site foi pensado e desenvolvido para atender as necessidades de log�stica de quem trabalha com transporte. Economize seu tempo e ganhe dinamismo para aquisi��o de caminhoneiros e fretes.</p>
				<p>Para ter acesso, basta cadastrar suas cargas e ve�culos atrav�s de nosso site. Com <b>BrasilFretes,</b> voc� encontra fretes e caminh�es de maneira r�pida e qualificada. Nossa busca inteligente de fretes filtra as informa��es pelo per�odo de disponibilidade, origem, destino, tipo de ve�culo e generalidades (exemplos: gerenciadora espec�fica, rastreador, entre outras). Somente caminhoneiros que atendam as exig�ncias especificadas na publica��o do frete (tipo de caminh�o, carroceria e generalidades) podem se candidatar para os carregamentos publicados. A verifica��o � feita automaticamente pelo sistema.</p></h4>
            </div>
        </div>
    </section>

    <section id="comofunciona" class="section section-padded">
        <div class="container">
            <div class="row services">
                <div class="text-como-funciona">
                    <h2>Como Funciona ?</h2>
                    <h3>Funciona Simples assim...</h3>
                </div>
                <div class="col-md-3">
                    <div class="service">
                        <div class="icon-holder">
                            <i class="fa fa-truck" aria-hidden="true"></i>
                        </div>
                        <h4 class="heading">Empresa Cadastra o Frete</h4>
                        <p class="description">A ag�ncia faz a disponibiliza��o do frete que est� consigo na BrasilFretes</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service">
                        <div class="icon-holder">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                        <h4 class="heading">Caminhoneiro Visualiza</h4>
                        <p class="description">Caminhoneiros cadastrados no site, analisam se os requisitos e localiza��o</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service">
                        <div class="icon-holder">
                            <i class="fa fa-comments" aria-hidden="true"></i>
                        </div>
                        <h4 class="heading">Ag�ncia e Caminhoneiro negociam entre S�</h4>
                        <p class="description">O BrasilFretes n�o tem qualquer liga��o quanto a Ag�ncia e Caminheiro. Dando liberdade para seus usu�rios</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service">
                        <div class="icon-holder">
                            <i class="fa fa-file" aria-hidden="true"></i>
                        </div>
                        <h4 class="heading">Os dois fecham neg�cio</h4>
                        <p class="description">A ag�ncia avalia escolhe um caminhoneiro que ir� ser responsabilizado por esta encomenda</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="quemsomos" class="section gray-bg">
        <div class="container">
            <div class="row title text-center">
                <h2 class="margin-top">A BrasilFretes ?</h2>
                <h4 class="light muted">Somos uma empresa Comprometida com solu��es para nossos <b>CLIENTES</b></h4>
                <p>Nossa criatividade � para auxiliar ao m�ximo ao caminhoneiro, para que o mesmo n�o necessite enfrentar dias parado por n�o achar fretes. A <b>BrasilFretes</b> se orgulha em poder ajudar aqueles que sempre est�o na estrada transportando nossos alimentos, medicamentos, combust�veis, entre muitas outras solu��es para que chegue at� n�s utenc�lios primordi�is.</p>
                <p>Em nome da <b>BrasilFretes</b>, o nosso <b>MUITO OBRIGADO</b>
                </p>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="team text-center">
                        <div class="textoquemsomos">
                            <h3>Somos focados em <b>ajudar</b>!
                             A quem <b>sempre</b> nos ajuda!</h3>
                            <p>Assista o v�deo ao lado. E veja uma homenagem a todos os amigos da estrada</p>
                        </div>
                    </div>
                </div>
                <div class="video col-xs-12 col-md-6">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/M451O7KYEtM" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="jumbotron jumbotron-sm section section-padded">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <h1 class="h1">
                    Contato <small>Entre em contato Conosco!</small></h1>
                    </div>
                </div>
            </div>
        </div>
        <div id="contato" class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">
                                            Nome</label>
                                        <input type="text" class="form-control" id="name" placeholder="Seu nome aqui" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <label for="E-mail">
                                            E-mail</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subject">
                                            Voc� � :</label>
                                        <select id="subject" name="subject" class="form-control" required="required">
                                            <option value="na" selected="">Escolha uma Op��o</option>
                                            <option value="service">Caminhoneiro</option>
                                            <option value="suggestions">Ag�ncia de Fretes</option>
                                            <option value="product">Outro</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">
                                            Mensagem</label>
                                        <textarea name="Escreva sua mensagem..." id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Escreva aqui sua mensagem. Escreva uma sugest�o, Reclama��o ou Elogio"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">Enviar mensagem</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="container">
            	<form>
              	  <div class="col-md-7">
                    
                        <legend><span class="glyphicon glyphicon-globe"></span>�Nosso Escrit�rio Est� aqui</legend>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1spt-BR!2sbr!4v1472603314150!6m8!1m7!1sWLu77DqLdGQtW0KuXXVPcQ!2m2!1d-27.07539808991683!2d-52.61882539554554!3f15.388341927748147!4f3.0023687196608506!5f0.7820865974627469" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                	</div>
                <div class="col-xs-4 endereco">
                	<address>
                		<h2>BrasilFretes</h2><br>
                			Rua Venezuela 367-D<br>
                			Chapec�, SC <br>
                			<abbr title="Phone">
                   			 Tel:</abbr>
                				(49) 9816-0522
            	   </address>
                   <address>
                		<strong>Anderson Scherer</strong><br>
                			<a href="mailto:#">anderson@brasilfretes.com</a>
            	  </address>
                    
                </div>
			  </form>
            </div>
    </footer>

    <div class="col-xs-12 copyright">
        <p>Todos os Direitos Reservados &copy; 2016 BrasilFretes.com
            <p>
    </div>

    <!-- Inclus�o do Modal -->

		<div class="modal fade" id="modal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content modal-popup">
					<h3 class="white">Como quer fazer Login ?</h3>
					<a href="<c:url value='/loginCaminhoneiro'/>"
						class="btn btn-primary">Camihoneiro</a> <a
						href="<c:url value='/loginAgencia'/>" class="btn btn-primary">Ag�ncia</a>
				</div>
			</div>
		</div>

	<!-- Holder for mobile navigation -->
    <div class="mobile-nav">
        <a href="#" class="close-link"><i class="arrow_up"></i></a>
    </div>


    <!-- Scripts -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script> 
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/wow.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/typewriter.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.onepagenav.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/main.js"></script>


</body>
</html>