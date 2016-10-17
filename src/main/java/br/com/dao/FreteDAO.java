package br.com.dao;

import java.util.List;

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
	
}
