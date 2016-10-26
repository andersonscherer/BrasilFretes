package br.com.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.dao.AgenciaDAO;
import br.com.dao.CaminhoneiroDAO;
import br.com.model.Agencia;
import br.com.model.Caminhoneiro;
import br.com.session.AgenciaSessao;
import br.com.session.CaminhoneiroSessao;

@Controller
public class IndexController {

	private final Result result;
	
	private Validator validator;
	
	private CaminhoneiroDAO caminhoneiroDAO = new CaminhoneiroDAO();
	
	Caminhoneiro caminhoneiro = new Caminhoneiro();	

	private AgenciaDAO agenciaDAO = new AgenciaDAO();
	 
	Agencia agencia = new Agencia();	

	private AgenciaSessao agenciaSessao;
	
	private CaminhoneiroSessao caminhoneiroSessao;
	
	//CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA
	
	/**
	 * @deprecated CDI eyes only
	 * Necessario para os controllers
	 */
	protected IndexController() {
		this(null, null, null, null);
	}
	
	@Inject
	public IndexController(Result result, Validator validator, CaminhoneiroSessao caminhoneiroSessao, AgenciaSessao agenciaSessao) {
		this.result = result;
		this.validator = validator;
		this.caminhoneiroSessao = caminhoneiroSessao;
		this.agenciaSessao = agenciaSessao;
	}

	@Path("/")
	public void index() {
		
	}
	
	@Get("/opcoesCadastro")
	public void opcoesEscolha(){
		//ESTE METODO ABRE A TELA OPCOESECOLHA.JSP
	}
	
	@Path("/loginCaminhoneiro")
	public void loginCaminhoneiro(){
		
	}
	
	@Post("/confereCaminhoneiro")
	public void confereCaminhoneiro(String email, String senha) {
		Caminhoneiro caminhoneiro = caminhoneiroDAO.findByCaminhoneiro(email);
		validator.check(caminhoneiro != null, new SimpleMessage("email",
				"Desculpe. Mas não encontramos esse usuário. Tente Novamente"));
		
		validator.check(
				caminhoneiro != null && caminhoneiro.verificaUsuario(senha),
				new SimpleMessage("senha", "Desculpe, mas essa senha não corresponde a este Usuário"));
		validator.onErrorRedirectTo(this).loginCaminhoneiro();

		caminhoneiroSessao.login(caminhoneiro);
		result.redirectTo(CaminhoneiroController.class).telaPrincipalCaminhoneiro();
	}

	@Path("/loginAgencia")
	public void loginAgencia(){
		
	}
	
	@Post("/confereAgencia")
	public void confereAgencia(String email, String senha) {
		Agencia agencia = agenciaDAO.findByAgencia(email);
		validator.check(agencia != null, new SimpleMessage("email",
				"Desculpe. Mas não encontramos esse usuário. Tente Novamente"));
		validator.check(
				agencia != null && agencia.verificaUsuario(senha),
				new SimpleMessage("senha", "Desculpe, mas essa senha não corresponde a este Usuário"));
		validator.onErrorRedirectTo(this).loginAgencia();

		agenciaSessao.login(agencia);
		result.redirectTo(AgenciaController.class).telaPrincipalAgencia();
	}

}