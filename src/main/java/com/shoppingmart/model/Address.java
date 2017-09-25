package com.shoppingmart.model;

import java.util.Set;

public class Address {
	private String firstName;
	private String lastName;
	private String houseNo;
	private String street;
	private Set<String> city;
	private Integer zip;
	private Set<String> state;
	private Set<String> country;
	private String primeryMobile;
	private String secoundryMobile;
	private String email;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getHouseNo() {
		return houseNo;
	}

	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public Set<String> getCity() {
		return city;
	}

	public void setCity(Set<String> city) {
		this.city = city;
	}

	public Integer getZip() {
		return zip;
	}

	public void setZip(Integer zip) {
		this.zip = zip;
	}

	public Set<String> getState() {
		return state;
	}

	public void setState(Set<String> state) {
		this.state = state;
	}

	public Set<String> getCountry() {
		return country;
	}

	public void setCountry(Set<String> country) {
		this.country = country;
	}

	public String getPrimeryMobile() {
		return primeryMobile;
	}

	public void setPrimeryMobile(String primeryMobile) {
		this.primeryMobile = primeryMobile;
	}

	public String getSecoundryMobile() {
		return secoundryMobile;
	}

	public void setSecoundryMobile(String secoundryMobile) {
		this.secoundryMobile = secoundryMobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
