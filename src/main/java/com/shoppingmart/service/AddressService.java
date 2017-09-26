package com.shoppingmart.service;

import java.util.List;



public interface AddressService {
	
	
	public List<String> getAllCountry(); 
		

	public List<String> getAllDistrict(String stateName) ;

	public List<String> getAllStates(String countryName);
}
