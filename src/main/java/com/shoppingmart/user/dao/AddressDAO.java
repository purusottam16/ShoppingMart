package com.shoppingmart.user.dao;
 
import java.util.List;

import com.shoppingmart.entities.City;
import com.shoppingmart.entities.Country;
import com.shoppingmart.entities.State;

 
 
 
public interface AddressDAO {
 
    Country findById(int id);
     
    Country findByCountryCode(String countryCode);
    List<State> findByCountryName(String countryCode);
    List<City> findByStateName(String StateCode);
     
    void save(Country entity);
    
    Country findByName(String name);
     
    void deleteByCountryCode(String countryCode);
     
    List<Country> findAllCountry();    
    
 
}