package br.com.dao;

import java.util.List;

import br.com.exception.DAOException;
import br.com.interfaces.UsoCodigo;

public interface GenericDAO<T extends UsoCodigo> {

	void salvar(T entidade) throws DAOException;
	void excluir(T entidade) throws DAOException;
	T buscar(Class<T> classe, Long codigo);
	List<T> listar(Class<T> classe);
	
}
