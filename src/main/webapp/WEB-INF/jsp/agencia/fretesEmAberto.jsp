<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/plugins/bootstrap/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/owl.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/assets/plugins/pace/pace-theme-big-counter.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/estilo_sistema/dashbord/assets/css/main-style.css">
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png">
		<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Buenard:700'>
		<title>Fretes em Execução/Aberto - BrasilFretes</title>
	</head>
	<body>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			id="navbar">
		<div class="navbar-header">
			<a class="light white navbar-brand"
				href="<c:url value='telaPrincipalAgencia'/>"><img
				src="<%=request.getContextPath()%>/resources/imagens/favicons/logo.png"
				alt=""> </a>
		</div>
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a
				href="${linkTo[AgenciaController].editarCadastroAgencia(agencia.agencia.codigo)}"
				data-toggle="tooltip" data-placement="bottom" title="Editar Dados">
					<i class="fa fa-user fa-3x"></i>
			</a></li>
			<li class="dropdown"><a
				href="${linkTo[AgenciaController].logoutAgencia}"
				data-toggle="tooltip" data-placement="bottom"
				title="Sair do sistema"> <i class="fa fa-sign-out fa-3x"></i></a></li>
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
				<li><a href="<c:url value='/cadastroDeFrete'/>"><i class="fa fa-plus fa-fw"></i> Cadastro de Frete</a></li>
				<li><a href="<c:url value='/fretesEmAberto'/>"><i class="fa fa-briefcase fa-fw"></i> Fretes em Execução/Aberto</a></li>
				<li><a href="<c:url value='/historicoAgenciaFretes'/>"><i class="fa fa-list-ul"></i> Meu historico de Fretes</a></li>
				<li><a href="<c:url value='/procurarCaminhoneiros'/>"><i class="fa fa-search fa-fw"></i> Procurar Caminhoneiros</a>
			</ul>
		</div>
		</nav>
	</div>

	<div id="wrapper">	
		
		<div class="col-md-10 col-md-offset-2">
			<div class="tabelaFretes" style="margin-top: 50px;">
					<c:if test="${not empty msgSucesso}">
						<div class="alert alert-success" role="alert">
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<c:out value="${msgSucesso}" />
						</div>
					</c:if>
					<div class="panel panel-default panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-6">
									<strong class="panel-title"> <i
										class="fa fa-briefcase" aria-hidden="true"></i> Fretes em Aberto
									</strong>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered table-list">
								<thead>
									<tr>
										<th>Cidade Origem</th>
										<th>Local de Retirada</th>									
										<th>Cidade Destino</th>
										<th>Local de Entrega</th>											
										<th>Valor do Frete (R$)</th>
										<th>Status</th>
										<th>Ações</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="aberto" items="${fretesAbertos}">
										<tr>
											<td><c:out value="${aberto.cidadeOrigem.nome} - ${aberto.cidadeOrigem.uf}" /></td>
											<td><c:out value="${aberto.localRetirada}" /></td>											
											<td><c:out value="${aberto.cidadeDestino.nome} - ${aberto.cidadeDestino.uf}" /></td>
											<td><c:out value="${aberto.localEntrega}" /></td>											
											<td><c:out value="${aberto.valor}" /></td>
											<td><c:out value="${aberto.statusFrete}" /></td>
											<td width="190">
												<a
													href="${linkTo[AgenciaController].dadosFrete(aberto)}"
													class="btn btn-primary btn-sm" title="Verificar candidatos">
														<i class="fa fa-eye" aria-hidden="true"></i> Visualizar
												</a> 
												<a 
													href="${linkTo[AgenciaController].excluir(aberto)}"
													class="btn btn-danger btn-sm" title="Excluir frete">
													<i class="fa fa-times" aria-hidden="true"></i> Excluir
												</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

					<div class="panel panel-primary panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-6">
									<strong class="panel-title">
										<li class="fa fa-cogs"></li> Fretes em Execução
									</strong>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered table-list">
								<thead>
									<tr>
										<th>Nome do Caminhoneiro</th>
										<th>Nome do Telefone</th>
										<th>Nome do Telefone 2</th>
										<th>Cidade Origem</th>
										<th>Cidade Destino</th>
										<th>Valor do Frete (R$)</th>
										<th>Status</th>
										<th>Ações</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="aberto" items="${fretesExecucao}">
										<tr>
											<td><c:out value="${aberto.caminhoneiro.nome}" /></td>
											<td><c:out value="${aberto.caminhoneiro.telefone}" /></td>		
											<td><c:out value="${aberto.caminhoneiro.telefone2}" /></td>																				
											<td><c:out value="${aberto.cidadeOrigem.nome} - ${aberto.cidadeOrigem.uf}" /></td>
											<td><c:out value="${aberto.cidadeDestino.nome} - ${aberto.cidadeDestino.uf}" /></td>
											<td><c:out value="${aberto.valor}" /></td>
											<td><c:out value="${aberto.statusFrete}" /></td>
											<td>
												<!-- Button trigger modal -->
												<button type="button"
													class="btn btn-success btn-sm btn-finalizar"
													data-id-frete="${aberto.codigo}">
													<i class="fa fa-check" aria-hidden="true"></i> Finalizar
												</button>
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

		<!-- Modal -->
		<div class="modal fade" id="modal-finalizar" tabindex="1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Avalie o Caminhoneiro</h4>
					</div>					
					<form id="form-avaliacao"
						action="${linkTo[AgenciaController].avaliarConducaoFrete}"
						method="post">
						<div class="modal-body">
							Pontuação:
							<input id="id-frete" type="hidden" name="codFrete" value="">
							<select name="nota" class="form-control">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Fechar</button>
							<button type="submit" class="btn btn-primary">Concluir processo</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<script
			src="<%=request.getContextPath()%>/resources/js/jquery-1.11.1.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				$('[data-toggle="tooltip"]').tooltip()
			});

			var _modal = $('#modal-finalizar');

			$('.btn-finalizar').on('click', function(e) {
				var idCaminhoneiro = $(this).data('id-frete');
				_modal.find('#id-frete').val(idCaminhoneiro);
				_modal.modal('show');
				e.preventDefault();
				e.stopPropagation();
				return false;
			});

			_modal.on('hidden.bs.modal', function() {
				$(this).find('#id-frete').val("");
			});
		</script>
	</body>
</html>