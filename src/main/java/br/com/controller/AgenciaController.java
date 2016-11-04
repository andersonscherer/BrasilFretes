package br.com.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.AgenciaDAO;
import br.com.dao.CaminhoneiroDAO;
import br.com.dao.CidadeDAO;
import br.com.dao.FreteDAO;
import br.com.exception.DAOException;
import br.com.model.Agencia;
import br.com.model.Caminhoneiro;
import br.com.model.Cidade;
import br.com.model.Frete;

@Controller
public class AgenciaController {

	private final Result result;

	private final CidadeDAO cidadeDAO;

	private final AgenciaDAO agenciaDAO;

	private final FreteDAO freteDAO;
	
	private final CaminhoneiroDAO caminhoneiroDAO;

	// CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER
	// CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA

	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	protected AgenciaController() {
		this(null, null, null, null, null);
	}

	@Inject
	public AgenciaController(Result result, CidadeDAO cidadeDAO, AgenciaDAO agenciaDAO, 
			FreteDAO freteDAO, CaminhoneiroDAO caminhoneiroDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.agenciaDAO = agenciaDAO;
		this.freteDAO = freteDAO;
		this.caminhoneiroDAO = caminhoneiroDAO;
	}

	@Post
	public void salvar(Agencia agencia) {
		try {
			agenciaDAO.salvar(agencia);
			result.include("msgSucesso", "Cadastrado com Sucesso! Faça Login para entrar");
			result.redirectTo(this).cadastroAgencia();
		} catch (DAOException e) {
			e.printStackTrace();
		}

	}

	@Path("/telaPrincipalAgencia")
	public void telaPrincipalAgencia() {

	}

	@Path("/cadastroAgencia")
	public void cadastroAgencia() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));

	}

	@Path("/historicoAgenciaFretes")
	public void historicoAgenciaFretes() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));

	}

	@Path("/procurarCaminhoneiros")
	public List<Caminhoneiro> procurarCaminhoneiros(Integer codCidade) {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		return codCidade == null ? null : caminhoneiroDAO.findByCidade(codCidade);
	}
	
	@Post("/pesquisarFrete")
	public void pesquisarFrete(Integer codCidade){
		result.redirectTo(this).procurarCaminhoneiros(codCidade);
	}

	@Path("/editarCadastroAgencia/{codAgencia}")
	public void editarCadastroAgencia(Long codAgencia) {
		result.include("a", agenciaDAO.buscar(Agencia.class, codAgencia));
		result.include("cidade", cidadeDAO.listar(Cidade.class));

	}

	@Path("/cadastroDeFrete")
	public void cadastroDeFrete() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));

	}

	@Path("/dadosFrete")
	public void dadosFrete() {

	}

	@Path("/fretesEmAberto")
	public void fretesEmAberto() {

	}

	@Post
	public void salvarFrete(Frete frete) {
		try {
			freteDAO.salvar(frete);
			result.include("msgSucesso", "Frete Cadastrado com Sucesso!");
			result.redirectTo(this).cadastroDeFrete();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}

	@Path("/meusFretes")
	public void listaFreteCaminhoneiro() {
		// List<Frete> fretes = FreteDAO.findByFrete(StatusFrete.ENCERRADO);
		// for (Frete frete : fretes)
		// frete.setItens(freteDAO.findByFrete(frete));
		//
		// return fretes;
	}
	
}