package br.com.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.AgenciaDAO;
import br.com.dao.CidadeDAO;
import br.com.dao.EstadoDAO;
import br.com.dao.FreteDAO;
import br.com.exception.DAOException;
import br.com.model.Agencia;
import br.com.model.Cidade;
import br.com.model.Estado;
import br.com.model.Frete;

@Controller
public class AgenciaController {

	private final Result result;

	private final CidadeDAO cidadeDAO;
	
	private final EstadoDAO estadoDAO;

	private final AgenciaDAO agenciaDAO;
	
	private final FreteDAO freteDAO;
	
	// CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER
	// CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA

	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	protected AgenciaController() {
		this(null, null, null, null, null);
	}

	@Inject
	public AgenciaController(Result result, CidadeDAO cidadeDAO, AgenciaDAO agenciaDAO, EstadoDAO estadoDAO, FreteDAO freteDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.agenciaDAO = agenciaDAO;
		this.estadoDAO = estadoDAO;
		this.freteDAO = freteDAO;
	}

	@Post
	public void salvar(Agencia agencia) {
		try {
			agenciaDAO.salvar(agencia);
		} catch (DAOException e) {
			e.printStackTrace();
		}

		result.redirectTo(this).cadastroAgencia();
	}
	
	@Path("/telaPrincipalAgencia")
	public void telaPrincipalAgencia() {

	}
	
	@Path("/cadastroAgencia")
	public void cadastroAgencia() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));

	}
	
	@Path("/fretesEmAberto")
	public void fretesEmAberto() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));

	}
	
	@Path("/historicoAgenciaFretes")
	public void historicoAgenciaFretes() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));

	}
	
	@Path("/procurarCaminhoneiros")
	public void procurarCaminhoneiros() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));
	}
	
	@Path("/editarCadastroAgencia/{codAgencia}")
	public void editarCadastroAgencia(Long codAgencia) {
		result.include("a", agenciaDAO.buscar(Agencia.class, codAgencia));
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));

	}
	
	@Path("/cadastroDeFrete")
	public void cadastroDeFrete() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));
		
	}
	
	@Post
	public void salvarFrete(Frete frete) {
		try {
			freteDAO.salvar(frete);
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
}