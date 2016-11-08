package br.com.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dao.CaminhaoDAO;
import br.com.dao.CaminhoneiroDAO;
import br.com.dao.CandidatoFreteDAO;
import br.com.dao.CidadeDAO;
import br.com.dao.FreteDAO;
import br.com.dao.MarcaCaminhaoDAO;
import br.com.exception.DAOException;
import br.com.model.Caminhao;
import br.com.model.Caminhoneiro;
import br.com.model.CandidatoFrete;
import br.com.model.Cidade;
import br.com.model.Frete;
import br.com.model.MarcaCaminhao;
import br.com.session.CaminhoneiroSessao;

@Controller
public class CaminhoneiroController {

	private final Result result;

	private final CidadeDAO cidadeDAO;

	private final MarcaCaminhaoDAO marcaCaminhaoDAO;

	private final CaminhoneiroDAO caminhoneiroDAO;

	private final CaminhaoDAO caminhaoDAO;

	private final FreteDAO freteDAO;
	
	private final CaminhoneiroSessao caminhoneiroSessao;
	
	private final CandidatoFreteDAO candidatoFreteDAO;
	
	// CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER
	// CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA

	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	protected CaminhoneiroController() {
		this(null, null, null, null, null, null, null, null);
	}

	@Inject
	public CaminhoneiroController(Result result, CidadeDAO cidadeDAO, MarcaCaminhaoDAO marcaCaminhaoDAO,
			CaminhoneiroDAO caminhoneiroDAO, CaminhaoDAO caminhaoDAO, FreteDAO freteDAO, CaminhoneiroSessao caminhoneiroSessao, CandidatoFreteDAO candidatoFreteDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.marcaCaminhaoDAO = marcaCaminhaoDAO;
		this.caminhoneiroDAO = caminhoneiroDAO;
		this.caminhaoDAO = caminhaoDAO;
		this.freteDAO = freteDAO;
		this.caminhoneiroSessao = caminhoneiroSessao;
		this.candidatoFreteDAO = candidatoFreteDAO;
	}

	@Path("/cadastroCaminhoneiro")
	public void cadastroCaminhoneiro() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
	}

	@Post
	public void salvar(Caminhoneiro caminhoneiro) {
		try {
			caminhoneiroDAO.salvar(caminhoneiro);
			result.include("msgSucesso", "Cadastrado com Sucesso! Faça Login para Entrar");
			result.redirectTo(this).cadastroCaminhoneiro();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}

	@Path("/telaPrincipalCaminhoneiro")
	public void telaPrincipalCaminhoneiro() {

	}

	@Path("/cadastroCaminhao")
	public void cadastroCaminhao() {
		result.include("marcasCaminhao", marcaCaminhaoDAO.listar(MarcaCaminhao.class));
	}

	@Get("/editarCadastro/{codCaminhoneiro}")
	public void editarCadastro(Long codCaminhoneiro) {
		result.include("caminhoneiro", caminhoneiroDAO.buscar(Caminhoneiro.class, codCaminhoneiro));
		result.include("cidades", cidadeDAO.listar(Cidade.class));
	}

	@Put("/alterarCaminhoneiro/{caminhoneiro.codigo}")
	public void alterarCaminhoneiro(Caminhoneiro caminhoneiro) {
		try {
			caminhoneiroDAO.salvar(caminhoneiro);
		} catch (DAOException e) {
			e.printStackTrace();
		}
		result.redirectTo(this).telaPrincipalCaminhoneiro();
	}

	@Path("/acompanharPedido")
	public List<CandidatoFrete> acompanharPedido() {
		//Listar todos os fretes que o caminhoneiro se candidatou
		return candidatoFreteDAO.findByCaminhoneiro(caminhoneiroSessao.getCaminhoneiro());
	}
	
	@Path("/candidatarAfrete")
	public void candidatarAfrete(Caminhoneiro caminhoneiro, Frete frete) {
		try{
			candidatoFreteDAO.salvar(new CandidatoFrete(caminhoneiro, frete));
			result.include("msgSucesso", "Frete selecionado com sucesso!");
			result.redirectTo(this).acompanharPedido();
		}catch(DAOException e){
			e.printStackTrace();
		}
	}
	

	@Path("/procurarFrete")
	public List<Frete> procurarFrete(Cidade cidade) {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("cidadeEscolhida", cidade);
		if (cidade != null && cidade.getCodigo() != null) {
			return freteDAO.findByCidade(cidade, caminhoneiroSessao.getCaminhoneiro());
		}
		return null;
	}
	
	@Post("/pesquisarFrete")
	public void pesquisarFrete(Cidade cidade){
		result.redirectTo(this).procurarFrete(cidade);
	}
	
	@Post
	public void salvarCaminhao(Caminhao caminhao) {
		try {
			caminhaoDAO.salvar(caminhao);
			result.include("msgSucesso", "Caminhão Cadastrado com Sucesso!");
			result.redirectTo(this).cadastroCaminhao();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
	
	@Get("/logout")
	public void logout() {
		caminhoneiroSessao.setCaminhoneiro(null);
		result.redirectTo(IndexController.class).index();
	}
	
	@Path("/meusFretes")
	public void listaFreteCaminhoneiro() {

	}
}
