package br.com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import br.com.interfaces.UsoCodigo;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Frete implements UsoCodigo{

	//Criando Um cadastro para a Encomenda.
	@Id//Setando que idAgencia será uma chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column 
	private Integer estado;
	
	@Column
	private Integer cidade;
	
	@Column 
	private Integer estadoDestino;
	
	@Column
	private Integer cidadeDestino;
	
	@Column
	private Double peso;
	
	@Column
	private Double valor;
	
	@Column
	private String observações;
	
	@Column
	private Integer tipoCarroceria;
	
	@ManyToOne(optional = false, targetEntity = Agencia.class)
	private Agencia agencia;
	
	@ManyToOne(optional = true, targetEntity = Caminhoneiro.class)
	private Caminhoneiro caminhoneiro;

	@OneToMany
	private Set<Frete> fretes = new HashSet<>();
}
