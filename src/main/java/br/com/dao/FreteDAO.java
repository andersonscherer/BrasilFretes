package br.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;

import br.com.model.Frete;

public class FreteDAO extends HibernateDAO<Frete>{

    public List<Frete> buscarPorCidadeDeOrigem(Integer codigoCidade) {
        this.conectar();
        try {
            TypedQuery<Frete> query = em.createNamedQuery("cidadeOrigemEData", Frete.class);
            query.setParameter(1, codigoCidade);
            return query.getResultList();
        } finally {
            this.finalizar();
        }
    }
    
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
	
}
