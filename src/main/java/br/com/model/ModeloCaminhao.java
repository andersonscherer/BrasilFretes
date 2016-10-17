package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.interfaces.UsoCodigo;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table
public class ModeloCaminhao implements UsoCodigo{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;

	@Column
	private String nome;
}
