package com.shoppingmart.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.shoppingmart.model.User;
import com.shoppingmart.model.UserInfo;
import com.shoppingmart.user.dao.AbstractDao;

@Repository
public class LogInDaoImpl extends AbstractDao<Integer, User> implements LogInDao {
	static final Logger logger = LoggerFactory.getLogger(LogInDaoImpl.class);
	
	@Autowired
	private BCryptPasswordEncoder encoder;

	public User findUserInfo(String username) {
		logger.info("username : {}", username);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("EMAIL", username));
        User user = (User)crit.uniqueResult();
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
        }
        return user;
		//return info;
	}
	
	public User findById(int id) {
        User user = getByKey(id);
        return user;
    }
 
    public User findBySSO(String sso) {
        System.out.println("SSO : "+sso);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        User user = (User)crit.uniqueResult();
        return user;
    }
 
    @SuppressWarnings("unchecked")
    public List<User> findAllUsers() {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<User> users = (List<User>) criteria.list();
         
        return users;
    }

	public List<String> getUserRoles(String username) {
		// TODO Auto-generated method stub
		//List<String> list = new ArrayList<String>();
		 Criteria cr = createEntityCriteria()
				    .setProjection(Projections.projectionList()				      
				      .add(Projections.property("ROLE"), "ROLE"))
				    .setResultTransformer(Transformers.aliasToBean(String.class));

				  List<String> list = cr.list();
		return list;
	}

}
