package br.com.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.enums.CandidatoStatus;
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
public class CandidatoFrete implements UsoCodigo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@ManyToOne
	private Caminhoneiro caminhoneiro;
	
	@ManyToOne
	private Frete frete;
	
	@Enumerated(EnumType.STRING)
	private CandidatoStatus status;
	
	@Temporal(TemporalType.DATE)
	private Date dataCadastro = new Date();
	
	public CandidatoFrete(Caminhoneiro caminhoneiro, Frete frete){
		this.caminhoneiro = caminhoneiro;
		this.frete = frete;
		this.status = CandidatoStatus.CANDIDATADO;
	}

}
