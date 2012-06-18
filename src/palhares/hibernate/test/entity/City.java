package palhares.hibernate.test.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="city")
public class City implements Serializable {
	private static final long serialVersionUID = 5878091749647589422L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="code")
	private Integer code;
	
	@Column(name="name")
	private String name;

	@ManyToOne(targetEntity=State.class)
	@JoinColumn(name="state")
	private State state;

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "City:(" + this.getCode() + ":" + this.getState().getCode() + "-" + this.getName() + ")";
	}
}
