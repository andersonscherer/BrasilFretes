package br.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;

import br.com.enums.Status;
import br.com.model.Agencia;
import br.com.model.Caminhoneiro;
import br.com.model.Cidade;
import br.com.model.Frete;

public class FreteDAO extends HibernateDAO<Frete>{
    
	public Set<Frete> findByFrete(Frete frete) {
		this.conectar();
		try {
			TypedQuery<Frete> query = em.createNamedQuery("Frete.POR_CAMINHONEIRO", Frete.class);
			query.setParameter(1, frete);
			return new HashSet<Frete>(query.getResultList());
		} finally {
			this.finalizar();
		}
	}
	
	public List<Frete> findByCidade(Cidade cidade, Caminhoneiro caminhoneiro) {
		try {
			this.conectar();
			TypedQuery<Frete> query = em.createNamedQuery("Frete.POR_CIDADE", Frete.class);
			query.setParameter(1, cidade);
			query.setParameter(2, caminhoneiro);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
	public List<Frete> findByTodos(Agencia agencia, Status status) {
		try {
			this.conectar();
			TypedQuery<Frete> query = em.createNamedQuery("Frete.TODOS_FRETES", Frete.class);
			query.setParameter(1, agencia);
			query.setParameter(2, status);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
	

	public List<Frete> findByCaminhoneiro(Caminhoneiro caminhoneiro) {
		try {
			this.conectar();
			//Na namedQuery Frete.MEUS_FRETES e responsavel por listar todo os fretes que contem o id do caminhoneiro cadastrdo
			TypedQuery<Frete> query = em.createNamedQuery("Frete.MEUS_FRETES", Frete.class);
			query.setParameter(1, caminhoneiro);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
	public Double avgByCaminhoneiro(Caminhoneiro caminhoneiro) {
		try {
			this.conectar();
			//Na namedQuery Frete.MEUS_FRETES e responsavel por listar todo os fretes que contem o id do caminhoneiro cadastrdo
			TypedQuery<Double> query = em.createNamedQuery("Frete.MEDIA_CAMINHONEIRO", Double.class);
			query.setParameter(1, caminhoneiro);
			return query.getSingleResult();
		} finally {
			this.finalizar();
		}
	}
	
}
