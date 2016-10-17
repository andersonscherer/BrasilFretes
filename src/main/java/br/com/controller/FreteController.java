package br.com.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.CidadeDAO;
import br.com.dao.EstadoDAO;
import br.com.dao.FreteDAO;
import br.com.exception.DAOException;
import br.com.model.Cidade;
import br.com.model.Estado;
import br.com.model.Frete;

@Controller
public class FreteController {

	private final Result result;

	private final CidadeDAO cidadeDAO;
	
	private final EstadoDAO estadoDAO;

	private final FreteDAO freteDAO;
	
	/**
	 * @deprecated CDI eyes only Necessario para os controllers
	 */
	
	protected FreteController() {
		this(null, null, null, null);
	}

	@Inject
	public FreteController(Result result, CidadeDAO cidadeDAO, EstadoDAO estadoDAO, FreteDAO freteDAO) {
		super();
		this.result = result;
		this.cidadeDAO = cidadeDAO;
		this.estadoDAO = estadoDAO;
		this.freteDAO = freteDAO;
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
