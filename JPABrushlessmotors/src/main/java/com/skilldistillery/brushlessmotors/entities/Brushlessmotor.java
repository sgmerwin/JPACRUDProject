package com.skilldistillery.brushlessmotors.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Brushlessmotor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;	
	private String name;
	
	@Column(name="max_current_amps")
	private Integer current;
	
	@Column(name="max_voltage")
	private Integer voltage;
	
	private Integer price;
	
	@Column(name="weight_grams")
	private Integer weight;
	
	private Integer rpm;
	
	@Column(name="force_N")
	private Double force;
	
	public Integer getCurrent() {
		return current;
	}

	public void setCurrent(Integer current) {
		this.current = current;
	}

	public Integer getVoltage() {
		return voltage;
	}

	public void setVoltage(Integer voltage) {
		this.voltage = voltage;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Integer getRpm() {
		return rpm;
	}

	public void setRpm(Integer rpm) {
		this.rpm = rpm;
	}

	public Double getForce() {
		return force;
	}

	public void setForce(Double force) {
		this.force = force;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Brushlessmotor() {
		super();
	}

	public Brushlessmotor(int id, String name, Integer current, Integer voltage, Integer price, Integer weight,
			Integer rpm, Double force) {
		super();
		this.id = id;
		this.name = name;
		this.current = current;
		this.voltage = voltage;
		this.price = price;
		this.weight = weight;
		this.rpm = rpm;
		this.force = force;
	}

	@Override
	public String toString() {
		return "Brushlessmotor [id=" + id + ", name=" + name + ", current=" + current + ", voltage=" + voltage
				+ ", price=" + price + ", weight=" + weight + ", rpm=" + rpm + ", force=" + force + "]";
	}

	

	
	
	

}
