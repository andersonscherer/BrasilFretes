package br.com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import br.com.enums.Status;
import br.com.interfaces.UsoCodigo;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@NamedQueries({ @NamedQuery(name = "Caminhoneiro.POR_USUARIO", query = "select c from Caminhoneiro c where c.email = ?1"),	
				@NamedQuery(name = "Caminhoneiro.POR_CIDADE", query = "select c from Caminhoneiro c where c.cidade = ?1"),
})
public class Caminhoneiro implements UsoCodigo{
	
//Criando Um cadastro para o caminhoneiro.
	@Id //Setando que idCaminhoneiro será uma chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column
	private String nome;
	
	@Column
	private String cpf;

	@Column
	private Integer tipoCNH;
	
	@Column
	private String numeroCNH;
	
	@Column
	private String telefone;
	
	@Column
	private String telefone2;
	
	@Column
	private String cursoEspecifico;
	
	@ManyToOne
	private Cidade cidade;
	
	@Column
	private String email;

	@Column
	private String senha;
	
	@Column
	private Status status = Status.ATIVO;
	
	@OneToOne(mappedBy = "caminhoneiro")
	private Caminhao caminhao;
	
	public boolean isAtivo() {
		return Status.ATIVO.equals(this.getStatus());
	}
	
	public boolean verificaUsuario(String senha) {
		return this.senha.equals(senha) && this.isAtivo();
	}
	
	@OneToMany
	private Set<Frete> fretes = new HashSet<>();
	
	public Caminhoneiro(Long codigo){
		this.codigo = codigo;
	}
}