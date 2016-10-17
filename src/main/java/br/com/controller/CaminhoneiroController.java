package br.com.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.CaminhaoDAO;
import br.com.dao.CaminhoneiroDAO;
import br.com.dao.CidadeDAO;
import br.com.dao.EstadoDAO;
import br.com.dao.MarcaCaminhaoDAO;
import br.com.exception.DAOException;
import br.com.model.Caminhao;
import br.com.model.Caminhoneiro;
import br.com.model.Cidade;
import br.com.model.Estado;
import br.com.model.MarcaCaminhao;

@Controller
public class CaminhoneiroController {

	private final Result result;

	private final CidadeDAO cidadeDAO;
	
	private final EstadoDAO estadoDAO;

	private final MarcaCaminhaoDAO marcaCaminhaoDAO;
	
	private final CaminhoneiroDAO caminhoneiroDAO;
	
	private final CaminhaoDAO caminhaoDAO;
	
	private static Caminhoneiro caminhoneiro;

	// CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER
	// CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA

	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	protected CaminhoneiroController() {
		this(null, null, null, null, null, null);
	}

	@Inject
	public CaminhoneiroController(Result result, CidadeDAO cidadeDAO, EstadoDAO estadoDAO,
			MarcaCaminhaoDAO marcaCaminhaoDAO, CaminhoneiroDAO caminhoneiroDAO, CaminhaoDAO caminhaoDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.estadoDAO = estadoDAO;
		this.marcaCaminhaoDAO = marcaCaminhaoDAO;
		this.caminhoneiroDAO = caminhoneiroDAO;
		this.caminhaoDAO = caminhaoDAO;
	}

	@Path("/cadastroCaminhoneiro")
	public void cadastroCaminhoneiro() {
		// qUANDO VOCE SO PRECISA CARREGAR A PAGINA CRIA O METO VAZIO
		// LEMBRE-SE QUE O NOME DO METODO DEVE SER O MESMO DO ARQUIVO QUE VOCE
		// CHAMAR
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));
	}

	@Post
	public void salvar(Caminhoneiro caminhoneiro) {
		try {
			caminhoneiroDAO.salvar(caminhoneiro);
		} catch (DAOException e) {
			e.printStackTrace();
		}
		result.redirectTo(this).cadastroCaminhoneiro();
	}

	@Path("/telaPrincipalCaminhoneiro")
	public void telaPrincipalCaminhoneiro() {

	}
	
	@Path("/cadastroCaminhao")
	public void cadastroCaminhao() {
		result.include("marcasCaminhao", marcaCaminhaoDAO.listar(MarcaCaminhao.class));
	}
	

	
	@Path("/editarCadastro")
	public void editarCadastro() {
	result.include("caminhoneiro", caminhoneiro);
	    
	}
	
	@Path("/acompanharPedido")
	public void acompanharPedido() {

	}
	
	@Path("/meusFretes")
	public void meusFretes() {

	}
	
	@Path("/procurarFrete")
	public void procurarFrete() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("estados", estadoDAO.listar(Estado.class));
	}
	
	@Post
	public void salvarCaminhao(Caminhao caminhao) {
		try {
			caminhaoDAO.salvar(caminhao);
		} catch (DAOException e) {
			e.printStackTrace();
		}
		result.redirectTo(this).telaPrincipalCaminhoneiro();
	}
}
