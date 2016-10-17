package br.com.exception;

public class DAOException extends Exception{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String mensagem;
	private String mensagemTratada;
	
	public DAOException(String mensagem) {
		super();
		this.mensagem = mensagem;
	}
	
	public DAOException(String mensagem, Throwable t) {
		super(mensagem, t);
		this.mensagem = mensagem;
		this.mensagemTratada = trataMensagem(t.getLocalizedMessage());
	}
	
	private String trataMensagem(String mensagem) {
		if (mensagem.contains("not-null property references a null or transient value")) {
			if (mensagem.contains("br.edu.unoesc.modelo.Aluno.data")) {
				return "campo data do aluno obrigatório";	
			}
		}
		return null;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public String getMensagemTratada() {
		return mensagemTratada;
	}

	public void setMensagemTratada(String mensagemTratada) {
		this.mensagemTratada = mensagemTratada;
	}
}
