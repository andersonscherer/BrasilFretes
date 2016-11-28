package br.com.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.enums.Status;
import br.com.model.Caminhoneiro;
import br.com.model.CandidatoFrete;
import br.com.model.Frete;

public class CandidatoFreteDAO extends HibernateDAO<CandidatoFrete> {

	public List<CandidatoFrete> findByCaminhoneiro(Caminhoneiro caminhoneiro, Status statusFrete, Status status) {
		this.conectar();
		try {
			TypedQuery<CandidatoFrete> query = em.createNamedQuery(
					"CandidatoFrete.POR_USUARIO", CandidatoFrete.class);
			query.setParameter(1, caminhoneiro);
			query.setParameter(2, statusFrete);
			query.setParameter(3, status);
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	public List<CandidatoFrete> findByFrete(Frete frete) {
		this.conectar();
		try {
			TypedQuery<CandidatoFrete> query = em.createNamedQuery(
					"CandidatoFrete.POR_FRETE", CandidatoFrete.class);
			query.setParameter(1, frete);
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	public List<CandidatoFrete> findByTodosFrete(Caminhoneiro caminhoneiro) {
		try {
			this.conectar();
			TypedQuery<CandidatoFrete> query = em.createNamedQuery("Frete.TODOS_FRETES", CandidatoFrete.class);
			query.setParameter(1, caminhoneiro);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
	
}
