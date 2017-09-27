package com.shoppingmart.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmart.entities.Country;
import com.shoppingmart.entities.City;
import com.shoppingmart.entities.State;
import com.shoppingmart.user.dao.AddressDAO;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService{
	
	@Autowired
	private AddressDAO dao;
	public List<String> getAllCountry() {
		List<String> list = null;
		List<Country> country = dao.findAllCountry();
		if (country != null) {
			list = new ArrayList<>();
			for (Country c : country) {
				list.add(c.getName());
			}
		}

		return list;
	}

	public List<String> getAllDistrict(String stateName) {
		List<String> list = null;
		
		if (dao.findByStateName(stateName) != null) {
			list=new ArrayList<String>();
			for(City city: dao.findByStateName(stateName)){
				list.add(city.getName());
			}
		}

		return list;
	}

	public List<String> getAllStates(String countryCode) {		
		
		List<String> list = null;
		
		if(dao.findByCountryName(countryCode)!=null){
			list=new ArrayList<String>();
			for(State state: dao.findByCountryName(countryCode)){
				list.add(state.getName());
			}
		}
		return list;
	}
}
