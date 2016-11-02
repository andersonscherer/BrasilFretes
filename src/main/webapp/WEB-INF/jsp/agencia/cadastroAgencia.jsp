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
	href="<%=request.getContextPath()%>/resources/estilo_sistema/bootstrap.css"
	rel="stylesheet" type="text/css">
<!-- Owl -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
<!-- Animate.css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/animate.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/font-awesome.min.css">
<!-- Elegant Icons -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/et-icons.css">
<!-- Main style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/estilo_sistema/styleSistema.css">

<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">

<link href='http://fonts.googleapis.com/css?family=Buenard:700'
	rel='stylesheet' type='text/css'>
<title>BrasilFretes - Cadastro de Agências</title>
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
	<!-- /.container-fluid --> </nav>

	<header>
	<div class="container">
		<div class="table">
			<div class="header-text">
				<div class="row">
					<c:if test="${not empty msgSucesso}">
			<div class="alert alert-success" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<c:out value="${msgSucesso}" />
			</div>
	</c:if>
					<h3 class="white ">Caminhoneiro. Cadastre-se em nosso sistema
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
		action="${linkTo[AgenciaController].salvar}" method="post">
		<div class="col-xs-12 col-md-6 cadastro">
			<div class="texto-cadastro">
				<h3 class="RoyalBlue">Dados pertinentes a Empresa</h3>
			</div>
			<div class="container">

				<fieldset>

					<!-- Form Name -->
					<legend>Cadastro do Caminhoneiro</legend>
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="text input">Nome
							Fantasia:</label>
						<div class="col-md-5">
							<input type="text" class="form-control input-sm"
								placeholder="Nome da Empresa" aria-describedby="basic-addon1"
								name="agencia.razaoFantasia" required="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="text input">C.N.P.J</label>
						<div class="col-md-5">
							<input id="textinput" name="agencia.cnpj"
								placeholder="Digite seu C.N.P.J" class="form-control input-sm"
								aria-describedby="basic-addon1" required="" maxlength="18"
								type="text" onkeypress="formatar('##.###.###/####-##', this)"
								onkeydown="formatar('##.###.###/####-##', this)"
								onkeyup="formatar('##.###.###/####-##', this)">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="text input">Responsável</label>
						<div class="col-md-5">
							<input id="textinput" name="agencia.responsavel"
								placeholder="Nome do Responsável da Empresa"
								class="form-control input-sm" aria-describedby="basic-addon1"
								required="" type="text">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Telefone</label>
						<div class="col-md-5">
							<input id="textinput" name="agencia.telefone"
								placeholder="Digite o Telefone" class="form-control input-xs"
								maxlength="15" type="text" onfocus="mascara(this)"
								onkeydown="mascara(this)">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="txtgrupo" required="">Cidade</label>
						<div class="col-md-4">
							<select id="txtgrupo" name="agencia.cidade.codigo"
								class="form-control">
								<option selected="selected">Selecione</option>
								<c:forEach var="cidade" items="${cidades}">
									<option value="${cidade.codigo}">${cidade.nome} - ${cidade.uf}</option>
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
				<form class="form-horizontal">
					<fieldset>

						<!-- Form Name -->
						<legend>Cadastro de login</legend>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="textinput">Seu
								E-mail:</label>
							<div class="col-md-4">
								<input id="textinput" name="agencia.email"
									placeholder="Digite seu E-mail" class="form-control input-md"
									required="" type="text">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="textinput">Sua
								Senha:</label>
							<div class="col-md-4">
								<input id="textinput" name="agencia.senha"
									placeholder="Digite sua Senha" class="form-control input-md"
									required="" type="password">
							</div>
						</div>
					</fieldset>
			</div>
		</div>

		<div class="col-xs-12">
			<div class="col-xs-12 col-md-2 col-md-offset-4  botaoCadastroAgencia">
				<button type="submit" class="btn btn-success" href="index.jsp">Ok!
					Cadastrar</button>
			</div>
			<div class="col-xs-12 col-md-2 botaoCancelarAgencia">
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