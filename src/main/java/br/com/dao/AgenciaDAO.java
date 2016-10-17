package br.com.dao;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.model.Agencia;

public class AgenciaDAO extends HibernateDAO<Agencia>{

	
	public Agencia findByAgencia(String email) {
		this.conectar();
		try {
			TypedQuery<Agencia> query = em.createNamedQuery(
					"Agencia.POR_USUARIO", Agencia.class);
			query.setParameter(1, email);
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
}
