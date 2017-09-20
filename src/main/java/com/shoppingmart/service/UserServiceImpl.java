package com.shoppingmart.service;
 
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmart.email.service.OrderService;
import com.shoppingmart.entities.UserEnity;
import com.shoppingmart.model.CustomerInfo;
import com.shoppingmart.model.ProductOrder;
import com.shoppingmart.model.User;
import com.shoppingmart.entities.UserProfile;
import com.shoppingmart.entity.converter.EntityUtils;
import com.shoppingmart.user.dao.UserDao;
import com.shoppingmart.user.service.UserDocumentService;
import com.shoppingmart.util.DateUtil;
 

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
    @Autowired
    @Qualifier("userDao")
    private UserDao dao;
    @Autowired
    OrderService orderService;
    @Autowired
    private EntityUtils utils;
    @Autowired
    UserDocumentService userDocumentService;
    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;
    @Autowired
    UserProfileService userProfileService;
 
    @Autowired
    private PasswordEncoder passwordEncoder;
     
    public User findById(int id) {
        return dao.findById(id);
    }
 
    public User findBySSO(String sso) {
        User user = dao.findBySSO(sso);
        return user;
    }
    public User findByEmail(String email) {
        User user = dao.findByEmail(email);
        return user;
    }
    private boolean isCurrentAuthenticationAnonymous() {
    	logger.info("Entering into AppController: >>>>>>> isCurrentAuthenticationAnonymous()");
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }
    public void saveUser(User user) {
    	UserEnity entity=utils.getUserEntity(user);    	
    	entity.setPassword(passwordEncoder.encode(user.getPassword()));
    	Set<UserProfile> profiles=new HashSet<>();
        //user.setDob(DateUtil.convertJavaDateToSqlDate(user.getDob()));
    	if(isCurrentAuthenticationAnonymous()){
    		UserProfile Profile= userProfileService.findByType("USER");
        	profiles.add(Profile);
        	entity.setUserProfiles(profiles);
    	}
    	
        dao.save(entity);        
		orderService.sendOrderConfirmation(getDummyOrder(user));
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if(entity!=null){
            //entity.setConfirmPassword(user.getConfirmPassword());
            if(!user.getPassword().equals(entity.getPassword())){
                entity.setPassword(passwordEncoder.encode(user.getPassword()));
            }
            entity.setFirstName(user.getFirstName());
            entity.setLastName(user.getLastName());
            entity.setEmail(user.getEmail());
            entity.setUserProfiles(user.getUserProfiles());
        }
    }
 
     
    public void deleteUserBySSO(String sso) {
        dao.deleteBySSO(sso);
    }
 
    public List<User> findAllUsers() {
        return dao.findAllUsers();
    }
 
    public boolean isUserSSOUnique(Integer id, String sso) {
        User user = findBySSO(sso);
        return ( user == null || ((id != null) && (user.getId() == id)));
    }
    
    public boolean isUserEmailUnique(Integer id, String email) {
        User user = findByEmail(email);
        return ( user == null || ((id != null) && (user.getId() == id)));
    }
    public static ProductOrder getDummyOrder(User user){
		ProductOrder order = new ProductOrder();
		order.setOrderId("1111");
		order.setProductName("Thinkpad T510");
		order.setStatus("confirmed");
		
		CustomerInfo customerInfo = new CustomerInfo();
		customerInfo.setName(user.getFirstName());
		customerInfo.setAddress("Bangalore");
		customerInfo.setEmail(user.getEmail());
		order.setCustomerInfo(customerInfo);
		return order;
	}

     
}