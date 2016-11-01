package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

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

	//Criando Um cadastro para o Frete.
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column
	private Integer cidade;
	
	@Column
	private Integer cidadeDestino;
	
	@Column
	private Double peso;
	
	@Column
	private Double valor;
	
	@Column
	private String observacoes;
	
	@Column
	private Integer tipoCarroceria;
	
	@Column
	private String perigosa;
		
	@ManyToOne(optional = false, targetEntity = Agencia.class)
	private Agencia agencia;
	

}
