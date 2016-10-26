<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/normalize.css">
		<link href="<%=request.getContextPath()%>/resources/estilo_sistema/bootstrap.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/animate.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/et-icons.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/styleSistema.css">
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
		
		<title>Editar Cadastro - BrasilFretes</title>
	</head>
<body>
	<div class="preloader">
		<img src="<%=request.getContextPath()%>/resources/imagens/loader.gif"
			alt="Preloader image">
	</div>
	<nav class="navbar">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="light white navbar-brand" href="<c:url value='/'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				data-active-url="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right main-nav">
				<li><a href="modal1" data-toggle="modal" data-target="#modal1"
					class="btn btn-blue">Entrar</a></li>
                    <li><a href="<c:url value='/opcoesCadastro'/>" class="btn btn-success">Cadastre-se</a></li>
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
				<div class="row">
					<h3 class="white ">Caminhoneiro. Cadastre em nosso sistema
						logo abaixo, e aproveite todas as funcionalidades nele
						disponíveis.</h3>
					<h2 class=" white">É GRATUÍTO !</h2>
				</div>
			</div>
		</div>
	</div>
	</header>

	<div class="col-xs-12 linha-cadastro ">
		<h1 class="white">Aproveite e Cadaste-se</h1>
	</div>


	<form class="form-horizontal"
		action="${linkTo[CaminhoneiroController].salvar}" method="post">
		<div class="col-xs-12 col-md-6 cadastro">
			<div class="texto-cadastro">
				<h3 class="RoyalBlue">Dados pertinentes ao caminhoneiro</h3>
			</div>
			<div class="container">
				<fieldset>

					<!-- Form Name -->
					<legend>Cadastro do Caminhoneiro</legend>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Nome
							Completo</label>
						<div class="col-md-5">
							<input type="text" placeholder="Nome"
								class="form-control input-xs" aria-describedby="basic-addon1"
								name="caminhoneiro.nome">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">C.P.F:</label>
						<div class="col-md-5">
							<input id="textinput" name="caminhoneiro.cpf"
								placeholder="Digite seu c.pf" class="form-control input-xs"
								maxlength="14" type="text"
								onkeypress="formatar('###.###.###-##', this)"
								onkeydown="formatar('###.###.###-##', this)"
								onkeyup="formatar('###.###.###-##', this)">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Data
							Nascimento</label>
						<div class="col-md-5">
							<input class="form-control" name="caminhonveiro.dataNascimento"
								id="registration-date" type="date">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="txtgrupo">Tipo
							de sua Carteira</label>
						<div class="col-md-4">
							<select id="txtgrupo" name="caminhoneiro.tipoCNH"
								class="form-control">
								<option>Selecione</option>
								<option value="1">A</option>
								<option value="2">B</option>
								<option value="3">D</option>
								<option value="4">E</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Número
							da C.N.H</label>
						<div class="col-md-5">
							<input id="textinput" name="caminhoneiro.numeroCNH"
								placeholder="Digite o número de sua C.N.H"
								class="form-control input-xs" required="" type="text">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Telefone</label>
						<div class="col-md-5">
							<input id="textinput" name="caminhoneiro.telefone"
								placeholder="Digite seu Telefone" class="form-control input-xs"
								maxlength="15" type="text" onfocus="mascara(this)"
								onkeydown="mascara(this)">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="txtgrupo">Possui
							Cursos Específicos</label>
						<div class="col-md-4">
							<select id="txtgrupo" name="caminhoneiro.cursoEspecifico"
								class="form-control">
								<option>Selecione</option>
								<option value="1">SIM</option>
								<option value="2">NÃO</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="txtgrupo">Estado</label>
						<div class="col-md-4">
							<select id="txtgrupo" name="caminhoneiro.estado.codigo"
								class="form-control">
								<option selected="selected">Selecione</option>
								<c:forEach var="estado" items="${estados}">
									<option value="${estado.codigo}">${estado.nome}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label" for="txtgrupo">Cidade</label>
						<div class="col-md-4">
							<select id="txtgrupo" name="caminhoneiro.cidade.codigo"
								class="form-control" >
								<option selected="selected">Selecione</option>
								<c:forEach var="cidade" items="${cidades}">
									<option value="${cidade.codigo}">${cidade.nome}</option>
								</c:forEach>
							</select>
						</div>
					</div>


				</fieldset>
			</div>
		</div>

		<div class="col-xs-12 col-md-6 cadastro">
			<div class="texto-cadastro">
				<h3 class="RoyalBlue">Dados pertinentes ao Login</h3>
			</div>
			<div class="container">
				<fieldset>

					<!-- Form Name -->
					<legend>Cadastro de login</legend>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Seu
							E-mail:</label>
						<div class="col-md-4">
							<input id="textinput" name="caminhoneiro.email"
								placeholder="Digite seu E-mail" class="form-control input-md"
								required="" type="text">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Sua
							Senha:</label>
						<div class="col-md-4">
							<input id="textinput" name="caminhoneiro.senha"
								placeholder="Digite sua Senha" class="form-control input-md"
								required="" type="password">
						</div>
					</div>
				</fieldset>
			</div>
		</div>

		<div class="col-xs-12">
			<div
				class="col-xs-12 col-md-2 col-md-offset-4  botaoEntrarCadCaminhoneiro">
				<button type="submit" class="btn btn-success" href="index.jsp">Ok!
					Cadastrar</button>
			</div>
			<div class="col-xs-12 col-md-2 botaoCancelarCadCaminhoneiro">
				<button href="index.html" type="button" class="btn btn-danger">Cancelar</button>
			</div>
		</div>

	</form>


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

	<script
		src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js "></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js "></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js "></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js "></script>
	<script src="<%=request.getContextPath()%>/resources/js/wow.min.js "></script>
	<script src="<%=request.getContextPath()%>/resources/js/typewriter.js "></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.onepagenav.js "></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js "></script>
	<!-- JRadioButton para opção de Cargas perigosas -->

	<script language="JavaScript">
    function mascara(telefone) {
        if (telefone.value.length == 0)
            telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
        if (telefone.value.length == 3)
            telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.

        if (telefone.value.length == 9)
            telefone.value = telefone.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.

    }
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