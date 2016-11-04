package br.com.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.model.Caminhoneiro;

@RequestScoped
public class CaminhoneiroDAO extends HibernateDAO<Caminhoneiro>{

	
	public Caminhoneiro findByCaminhoneiro(String email) {
		this.conectar();
		try {
			TypedQuery<Caminhoneiro> query = em.createNamedQuery(
					"Caminhoneiro.POR_USUARIO", Caminhoneiro.class);
			query.setParameter(1, email);
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	public List<Caminhoneiro> findByCidade(Integer codCidade) {
		try {
			this.conectar();
			TypedQuery<Caminhoneiro> query = em.createNamedQuery("Caminhoneiro.POR_CIDADE", Caminhoneiro.class);
			query.setParameter(1, codCidade);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
}
