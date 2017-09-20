package com.shoppingmart.user.dao;
 
import java.util.List;
 
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmart.entities.UserEnity;
import com.shoppingmart.entity.converter.EntityUtils;
import com.shoppingmart.model.User;
import com.shoppingmart.model.UserProfile;
 
 
 
 
@Repository("usersDao")
public class UsersDaoImpl extends AbstractDao<Integer, UserEnity> implements UserDao {
	static final Logger logger = LoggerFactory.getLogger(UsersDaoImpl.class);
	@Autowired
	private EntityUtils utils;
    public User findById(int id) {
    	UserEnity user = getByKey(id);
        return utils.getUser(user);
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
        List<UserEnity> users = (List<UserEnity>) criteria.list();
         
        return utils.getUserList(users);
    }
 
    public void save(UserEnity user) {
        persist(user);
    }
 
    public void deleteBySSO(String sso) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        UserEnity user = (UserEnity)crit.uniqueResult();
        delete(user);
    }

	@Override
	public User findByEmail(String email) {
		logger.info("username : {}", email);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("EMAIL", email));
        UserEnity user = (UserEnity)crit.uniqueResult();
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
        }
        return utils.getUser(user);
	}

}