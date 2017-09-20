package com.shoppingmart.dao;
 
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
import com.shoppingmart.user.dao.AbstractDao;
import com.shoppingmart.user.dao.UserDao;
 
 
 
 
@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, UserEnity> implements UserDao {
 
    static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
    @Autowired
    private EntityUtils utils;
     
    public User findById(int id) {
    	UserEnity userEntity = getByKey(id);    	 
        if(userEntity!=null){
            Hibernate.initialize(userEntity.getUserProfiles());
        }
        return utils.getUser(userEntity);
    }
 
    public User findBySSO(String sso) {
        logger.info("SSO : {}", sso);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        User user = (User)crit.uniqueResult();
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
        }
        return user;
    }
 
    @SuppressWarnings("unchecked")
    public List<User> findAllUsers() {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<UserEnity> users = (List<UserEnity>) criteria.list();
         
        // No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
        // Uncomment below lines for eagerly fetching of userProfiles if you want.
        /*
        for(User user : users){
            Hibernate.initialize(user.getUserProfiles());
        }*/
        if(users ==null){
        	 return null;
        }
        return utils.getUserList(users);
    }
 
    public void save(UserEnity entity) {
        persist(entity);
    	//saveOrUpdate(entity);
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
        crit.add(Restrictions.eq("email", email));
        UserEnity user = (UserEnity)crit.uniqueResult();
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
            return utils.getUser(user);
        }else{
        	 return null;
        }  
       
	}

	
 
}