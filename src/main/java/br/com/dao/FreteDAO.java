package br.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;

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
}
