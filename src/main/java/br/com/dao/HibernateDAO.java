package br.com.dao;

import java.util.List;

import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.TypedQuery;

import br.com.exception.DAOException;
import br.com.interfaces.UsoCodigo;

public abstract class HibernateDAO<T extends UsoCodigo> implements GenericDAO<T>{


	@Produces
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("unidade");

	@Produces
	protected EntityManager em;

	@Produces
	protected EntityTransaction et;

	protected void conectar() {
		em = emf.createEntityManager();
	}

	protected void finalizar() {
		em.close();
	}

	@Override
	public void salvar(T entidade) throws DAOException {
		this.conectar();
		et = em.getTransaction();
		try {
			et.begin();
			if (entidade.getCodigo() == null) {
				em.persist(entidade);
			} else {
				em.merge(entidade);
			}
			et.commit();
		} catch (PersistenceException ex) {
			if (et.isActive()) {
				et.rollback();
			}
			throw new DAOException("Erro ao Salvar", ex.getCause());
		} finally {
			this.finalizar();
		}
	}

	@Override
	public void excluir(T entidade) throws DAOException {
		this.conectar();
		et = em.getTransaction();
		try {
			et.begin();
			Object t = em.find(entidade.getClass(), entidade.getCodigo());
			em.remove(t);
			et.commit();
		} catch (PersistenceException ex) {
			if (et.isActive()) {
				et.rollback();
			}
			throw new DAOException("Erro ao Excluir", ex.getCause());
		} finally {
			this.finalizar();
		}
	}

	@Override
	public T buscar(Class<T> classe, Long codigo) {
		this.conectar();
		try {
			return em.find(classe, codigo);
		} finally {
			this.finalizar();
		}
	}	
	

	@Override
	public List<T> listar(Class<T> classe) {
		this.conectar();
		try {
			TypedQuery<T> query = em.createQuery("from " + classe.getSimpleName(), classe);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
}
