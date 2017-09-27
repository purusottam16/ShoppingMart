package com.shoppingmart.service;

import java.util.List;



public interface AddressService {
	
	
	public List<String> getAllCountry(); 
		

	public List<String> getAllDistrict(String stateCode) ;

	public List<String> getAllStates(String countryCode);
}
