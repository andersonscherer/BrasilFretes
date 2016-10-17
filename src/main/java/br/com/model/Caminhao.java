package br.com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
public class Caminhao implements UsoCodigo{

	//Criando Um cadastro para o Caminhao.
	@Id //Setando que idCaminhoneiro será uma chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column 
	private Integer marcaCaminhao;
	
	@Column 
	private String modeloCaminhao;
	
	@Column
	private Integer tipoCarroceria;
	
	@Column
	private String placa;
	
	@Column
	private String codRntrc;
	
	
	
}
