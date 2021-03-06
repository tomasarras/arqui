package edu.isistan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cliente {
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_cliente", nullable = false)
	private Integer id;
	@Column(name = "nombre_cliente", nullable = false)
	private String nombre;
	
	public Cliente() {
		super();
	}

	public Cliente(String nombre) {
		super();
		this.nombre = nombre;
	}
	
	public Cliente(Integer id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
}
