package br.com.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dao.AgenciaDAO;
import br.com.dao.CaminhoneiroDAO;
import br.com.dao.CandidatoFreteDAO;
import br.com.dao.CidadeDAO;
import br.com.dao.FreteDAO;
import br.com.enums.Status;
import br.com.exception.DAOException;
import br.com.model.Agencia;
import br.com.model.Caminhoneiro;
import br.com.model.CandidatoFrete;
import br.com.model.Cidade;
import br.com.model.Frete;
import br.com.session.AgenciaSessao;

@Controller
public class AgenciaController {

	private final Result result;

	private final CidadeDAO cidadeDAO;

	private final AgenciaDAO agenciaDAO;

	private final FreteDAO freteDAO;
	
	private final CaminhoneiroDAO caminhoneiroDAO;
	
	private final AgenciaSessao agenciaSessao;
	
	private final CandidatoFreteDAO candidatoFreteDAO;

	// CADA CONTROLER E RESPONSAVEL POR SUA ACOOES POR EXEMPLO O INDEXCONTROLLER
	// CHAMA A TELA DE INICIO E A TELA DE OPCOES ESCOLHA

	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	protected AgenciaController() {
		this(null, null, null, null, null, null, null);
	}

	@Inject
	public AgenciaController(Result result, CidadeDAO cidadeDAO, AgenciaDAO agenciaDAO, 
			FreteDAO freteDAO, CaminhoneiroDAO caminhoneiroDAO, AgenciaSessao agenciaSessao, CandidatoFreteDAO candidatoFreteDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.agenciaDAO = agenciaDAO;
		this.freteDAO = freteDAO;
		this.caminhoneiroDAO = caminhoneiroDAO;
		this.agenciaSessao = agenciaSessao;
		this.candidatoFreteDAO = candidatoFreteDAO;
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
	public List<Frete> historicoAgenciaFretes() {
		return freteDAO.findByTodos(agenciaSessao.getAgencia(), Status.FINALIZADO);
	}

	@Path("/procurarCaminhoneiros")
	public List<Caminhoneiro> procurarCaminhoneiros(Cidade cidade) {
		result.include("cidades", cidadeDAO.listar(Cidade.class));
		result.include("cidadeEscolhida", cidade);
		
		if (cidade != null && cidade.getCodigo() != null) {
			List<Caminhoneiro> caminhoneiros = caminhoneiroDAO.findByCidade(cidade);
			for (Caminhoneiro caminhoneiro : caminhoneiros) {
				Double media = freteDAO.avgByCaminhoneiro(caminhoneiro);
				caminhoneiro.setMediaFrete(media);
			}
			return caminhoneiros;
		}
		
		return null;
	}
	
	@Post("/pesquisar")
	public void pesquisar(Cidade cidade){
		result.redirectTo(this).procurarCaminhoneiros(cidade);
	}

	@Path("/editarCadastroAgencia/{codAgencia}")
	public void editarCadastroAgencia(Long codAgencia) {
		result.include("a", agenciaDAO.buscar(Agencia.class, codAgencia));
		result.include("cidades", cidadeDAO.listar(Cidade.class));

	}
	
	@Put("/alterarAgencia/{agencia.codigo}")
	public void alterarAgencia(Agencia agencia) {
		try {
			agenciaDAO.salvar(agencia);
		} catch (DAOException e) {
			e.printStackTrace();
		}
		result.redirectTo(this).telaPrincipalAgencia();
	}

	@Path("/cadastroDeFrete")
	public void cadastroDeFrete() {
		result.include("cidades", cidadeDAO.listar(Cidade.class));

	}

	@Path("/dadosFrete/{frete.codigo}")
	public List<CandidatoFrete> dadosFrete(Frete frete) {
		result.include("frete", frete);
		return candidatoFreteDAO.findByFrete(frete);

	}
	
	@Get("/defineCaminhoneiro")
	public void defineCaminhoneiro(Long codFrete, Caminhoneiro caminhoneiro){
		try {
			Frete frete = freteDAO.buscar(Frete.class, codFrete);
			frete.setCaminhoneiro(caminhoneiro);
			frete.setStatusFrete(Status.EXECUCAO);
			freteDAO.salvar(frete);
			result.include("msgSucesso", "Caminhoneiro adicionado com Sucesso !!!");
			result.redirectTo(this).fretesEmAberto();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
	

	@Path("/fretesEmAberto")
	public void fretesEmAberto() {
		result.include("fretesExecucao", freteDAO.findByTodos(agenciaSessao.getAgencia(), Status.EXECUCAO));
		result.include("fretesAbertos", freteDAO.findByTodos(agenciaSessao.getAgencia(), Status.ABERTO));
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
	
	
	@Get("/excluir/{frete.codigo}")
	public void excluir(Frete frete){
		try{
			freteDAO.excluir(frete);
			result.include("msgSucesso", "Frete Excluido com Sucesso!");
			result.redirectTo(this).fretesEmAberto();
		}catch (DAOException e) {
			e.printStackTrace();
		}
		
	}

	@Get("/logoutAgencia")
	public void logoutAgencia() {
		agenciaSessao.setAgencia(null);
		result.redirectTo(IndexController.class).index();
	}
	
	@Post
	public void avaliarConducaoFrete(Long codFrete, Integer nota) {
		try {
			Frete frete = freteDAO.buscar(Frete.class, codFrete);
			frete.setNotaCaminhoneiro(nota);
			frete.setStatusFrete(Status.FINALIZADO);
			freteDAO.salvar(frete);
			result.redirectTo(this).fretesEmAberto();
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
	
}