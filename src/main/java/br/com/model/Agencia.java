package br.com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

import br.com.enums.Status;
import br.com.interfaces.UsoCodigo;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@NamedQueries({ @NamedQuery(name = "Agencia.POR_USUARIO", query = "select a from Agencia a where a.email = ?1") })
public class Agencia implements UsoCodigo{

	//Criando Um cadastro para A Agência.
	@Id//Setando que idAgencia será uma chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column
	private String razaoSocial;
	
	@Column
	private String cnpj;
	
	@Column
	private String responsavel;
	
	@Column
	private Integer cidade;
	
	@Column
	private Integer estado;
	
	@Column
	private String telefone;
	
	@Column
	private String email;
	
	@Column
	private String senha;
	
	@Column
	private Status status;
	
	public boolean isAtivo() {
		return Status.ATIVO.equals(this.getStatus());
	}
	
	public boolean verificaUsuario(String senha) {
		return this.senha.equals(senha) && this.isAtivo();
	}
	
	@OneToMany
	private Set<Frete> fretes = new HashSet<>();
	
}
