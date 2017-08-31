package com.shoppingmart.user.dao;
 
import java.util.List;
 
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.shoppingmart.model.User;
import com.shoppingmart.user.controller.RegisterUserController;
 
 
 
 
@Repository("usersDao")
public class UsersDaoImpl extends AbstractDao<Integer, User> implements UserDao {
	static final Logger logger = LoggerFactory.getLogger(UsersDaoImpl.class);
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
 
    public void save(User user) {
        persist(user);
    }
 
    public void deleteBySSO(String sso) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        User user = (User)crit.uniqueResult();
        delete(user);
    }

	@Override
	public User findByEmail(String email) {
		logger.info("username : {}", email);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("EMAIL", email));
        User user = (User)crit.uniqueResult();
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
        }
        return user;
	}
 
}