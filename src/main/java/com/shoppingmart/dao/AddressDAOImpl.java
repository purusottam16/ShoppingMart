package com.shoppingmart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.Subqueries;
import org.springframework.stereotype.Repository;

import com.shoppingmart.entities.City;
import com.shoppingmart.entities.Country;
import com.shoppingmart.entities.State;
import com.shoppingmart.user.dao.AbstractDao;
import com.shoppingmart.user.dao.AddressDAO;

@Repository
public class AddressDAOImpl extends AbstractDao<Integer, Country> implements AddressDAO{

	@Override
	public Country findById(int id) {
		// TODO Auto-generated method stub
		return getByKey(id);
	}

	@Override
	public Country findByCountryCode(String countryCode) {
		Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("countryCode", countryCode));
        Country country = (Country)crit.uniqueResult();
        return country;
		
	}

	@Override
	public void save(Country entity) {
		// TODO Auto-generated method stub
		persist(entity);
	}

	@Override
	public Country findByName(String name) {
		Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("name", name));
        Country country = (Country)crit.uniqueResult();
        return country;
	}

	@Override
	public void deleteByCountryCode(String countryCode) {
		// TODO Auto-generated method stub
		 Criteria crit = createEntityCriteria();
	        crit.add(Restrictions.eq("countryCode", countryCode));
	        Country country = (Country)crit.uniqueResult();
	        delete(country);
	}

	@Override
	public List<Country> findAllCountry() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        @SuppressWarnings("unchecked")
		List<Country> country = (List<Country>) criteria.list();
         
		return country;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<State> findByCountryName(String countryName) {
		List<State> states=null;
		DetachedCriteria countrySubquery = DetachedCriteria.forClass(Country.class, "c")
			    // Filter the Subquery
			    .add(Restrictions.eq("c.name", countryName))
			    // SELECT The User Id  
			    .setProjection( Projections.property("c.countryCode") );
		Criteria criteria =getSession().createCriteria(State.class, "s").add( Subqueries.propertyIn("s.country", countrySubquery) );
		states=(List<State>)criteria.list();
		return states;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<City> findByStateName(String StateName) {
		List<City> cities=null;
		DetachedCriteria stateSubquery = DetachedCriteria.forClass(State.class, "c")
			    // Filter the Subquery
			    .add(Restrictions.eq("c.name", StateName))
			    // SELECT The User Id  
			    .setProjection( Projections.property("c.stateCode") );
		Criteria criteria =getSession().createCriteria(City.class, "s").add( Subqueries.propertyIn("s.state", stateSubquery) );
		cities=(List<City>)criteria.list();
		
		/*Criteria criteria =getSession().createCriteria(City.class).createAlias("state", "a").add(Restrictions.eq("a.stateCode", Integer.parseInt(StateCode)));
		
		cities=(List<City>)criteria.list();*/
		
		
		
		
		
		return cities;
		
	}

}
