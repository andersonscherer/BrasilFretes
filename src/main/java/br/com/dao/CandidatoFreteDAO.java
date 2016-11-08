package br.com.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.model.Caminhoneiro;
import br.com.model.CandidatoFrete;

public class CandidatoFreteDAO extends HibernateDAO<CandidatoFrete> {

	public List<CandidatoFrete> findByCaminhoneiro(Caminhoneiro caminhoneiro) {
		this.conectar();
		try {
			TypedQuery<CandidatoFrete> query = em.createNamedQuery(
					"CandidatoFrete.POR_USUARIO", CandidatoFrete.class);
			query.setParameter(1, caminhoneiro);
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	
}
