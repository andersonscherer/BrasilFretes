package br.com.session;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.model.Caminhoneiro;

@SessionScoped
@Named("usuario")
public class CaminhoneiroSessao implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Caminhoneiro caminhoneiro;
	
	public void login(Caminhoneiro caminhoneiro){
		this.caminhoneiro = caminhoneiro;
	}
	
	public boolean isLogado(){
		return caminhoneiro != null;
	}

	public Caminhoneiro getCaminhoneiro() {
		return caminhoneiro;
	}

	public void setCaminhoneiro(Caminhoneiro caminhoneiro) {
		this.caminhoneiro = caminhoneiro;
	}
}
