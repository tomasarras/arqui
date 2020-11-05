package edu.isistan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.v3.oas.annotations.media.Schema;


@Entity
public class Plan {
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	@ApiModelProperty(notes = "Identificador del plan",name = "id",required = false,value = "10", readOnly = true)
	@Schema(accessMode = Schema.AccessMode.READ_ONLY)
	@Column(name = "id_plan", nullable = false)
	private Integer id;
	@ApiModelProperty(notes = "Nombre del plan",name = "nombre",required = true,value = "nombre_plan")
	@Column(name = "nombre_plan")
	private String nombre;
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "id_viaje",nullable = false)
	private Viaje viaje;
	
	public Plan() {
		super();
	}
	
	public Plan(String nombre) {
		super();
		this.nombre = nombre;
	}
	
	public Plan(Integer id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}
	
	public Plan(String nombre,Viaje viaje) {
		super();
		this.nombre = nombre;
		this.viaje = viaje;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getId() {
		return id;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setViaje(Viaje viaje) {
		this.viaje = viaje;
	}
	
	public Viaje getViaje() {
		return this.viaje;
	}

	@Override
	public String toString() {
		return "Plan [id=" + id + ", nombre=" + nombre + ", viaje=" + viaje + "]";
	}
	
	
	
}
