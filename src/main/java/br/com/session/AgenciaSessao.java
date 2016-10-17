package br.com.session;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.model.Agencia;
import java.io.Serializable;

@SessionScoped
@Named("agencia")
public class AgenciaSessao implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Agencia agencia;
	
	public void login(Agencia agencia){
		this.agencia = agencia;
	}
	
	public boolean isLogado(){
		return agencia != null;
	}

	public Agencia getAgencia() {
		return agencia;
	}

	public void setAgencia(Agencia agencia) {
		this.agencia = agencia;
	}
}
