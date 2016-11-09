package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import br.com.enums.Status;
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
@NamedQueries({
		@NamedQuery(name = "Frete.POR_CIDADE", query = "select f from Frete f where f.cidadeOrigem = ?1 and f.codigo not in "
				+ "(select cf.frete.codigo from CandidatoFrete cf where cf.caminhoneiro = ?2)"),
		@NamedQuery(name = "Frete.TODOS_FRETES", query = "select f from Frete f where f.statusFrete = ?2 and f.agencia = ?1")
})
public class Frete implements UsoCodigo {

	// Criando Um cadastro para o Frete.
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;

	@ManyToOne(optional = false, targetEntity = Cidade.class)
	private Cidade cidadeOrigem;

	@ManyToOne(optional = false, targetEntity = Cidade.class)
	private Cidade cidadeDestino;

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

	@Column
	private String localRetirada;

	@Column
	private String localEntrega;

	@Enumerated(EnumType.STRING)
	@Column(nullable = false, length = 30)
	private Status statusFrete = Status.ABERTO;

	@ManyToOne(optional = false, targetEntity = Agencia.class)
	private Agencia agencia;

	public Frete(Long codigo) {
		this.codigo = codigo;
	}

}
