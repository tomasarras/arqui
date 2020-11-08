package edu.isistan.model.planes;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.springframework.util.StringUtils;

import edu.isistan.model.Plan;

@Entity
public class PlanViajeColectivo extends Plan {
	@Column
	private Integer asiento;

	public int getAsiento() {
		return asiento;
	}

	public void setAsiento(int asiento) {
		this.asiento = asiento;
	}

	public PlanViajeColectivo() {
		super();
	}
	
	@Override
	public boolean esValido() {
		return !(!super.esValido() || asiento == null);
	}
	
	@Override
	public void modificarse(Plan plan) {
		PlanViajeColectivo p = (PlanViajeColectivo) plan;
		super.modificarse(plan);
		this.asiento = p.getAsiento();
	}

}
