package com.shoppingmart.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "CITY")
public class City {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@NotEmpty
	@Column(name = "CITY_CODE", nullable = false)
	private Integer cityCode;
	@NotEmpty
	@Column(name = "NAME", nullable = false)
	private String name;
	
	@ManyToOne(optional = false)
    @JoinColumn(name = "STATE_CODE")
	private State state;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getDistrictCode() {
		return cityCode;
	}

	public void setDistrictCode(Integer districtCode) {
		this.cityCode = districtCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
