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
import br.com.dao.CidadeDAO;
import br.com.dao.FreteDAO;
import br.com.dao.MarcaCaminhaoDAO;
import br.com.exception.DAOException;
import br.com.model.Caminhao;
import br.com.model.Caminhoneiro;
import br.com.model.Cidade;
import br.com.model.Frete;
import br.com.model.MarcaCaminhao;

@Controller
public class CaminhoneiroController {

	private final Result result;

	private final CidadeDAO cidadeDAO;

	private final MarcaCaminhaoDAO marcaCaminhaoDAO;

	private final CaminhoneiroDAO caminhoneiroDAO;

	private final CaminhaoDAO caminhaoDAO;

	private final FreteDAO freteDAO;
	
	// CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER
	// CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA

	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	protected CaminhoneiroController() {
		this(null, null, null, null, null, null);
	}

	@Inject
	public CaminhoneiroController(Result result, CidadeDAO cidadeDAO, MarcaCaminhaoDAO marcaCaminhaoDAO,
			CaminhoneiroDAO caminhoneiroDAO, CaminhaoDAO caminhaoDAO, FreteDAO freteDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.marcaCaminhaoDAO = marcaCaminhaoDAO;
		this.caminhoneiroDAO = caminhoneiroDAO;
		this.caminhaoDAO = caminhaoDAO;
		this.freteDAO = freteDAO;
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
		result.redirectTo(this).cadastroCaminhoneiro();
	}

	@Path("/acompanharPedido")
	public void acompanharPedido() {

	}

	@Path("/procurarFrete")
	public List<Frete> procurarFrete(Integer codCidade) {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		return codCidade == null ? null : freteDAO.findByCidade(codCidade);
	}
	
	@Post("/pesquisar")
	public void pesquisar(Integer codCidade){
		result.redirectTo(this).procurarFrete(codCidade);
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
}
