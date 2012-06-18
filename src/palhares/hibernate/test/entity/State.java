package palhares.hibernate.test.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="state")
public class State implements Serializable {
	private static final long serialVersionUID = 4271079367390934977L;

	@Id
	@Column(name="code")
	private String code;
	
	@Column(name="name")
	private String name;

	@OneToMany(targetEntity=City.class)
	@JoinColumn(referencedColumnName="code", name="state")
	private Set<City> cities;

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public Set<City> getCities() {
		return cities;
	}
	public void setCities(Set<City> cities) {
		this.cities = cities;
	}

	@Override
	public String toString() {
		return "State: (" + this.getCode() + " - " + this.getName() + ")";
	}
}
