package com.shoppingmart.service;
 
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmart.email.service.OrderService;
import com.shoppingmart.model.CustomerInfo;
import com.shoppingmart.model.ProductOrder;
import com.shoppingmart.model.User;
import com.shoppingmart.user.dao.UserDao;
 

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
 
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        dao.save(user);        
		orderService.sendOrderConfirmation(getDummyOrder());
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if(entity!=null){
            entity.setSsoId(user.getSsoId());
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
    public static ProductOrder getDummyOrder(){
		ProductOrder order = new ProductOrder();
		order.setOrderId("1111");
		order.setProductName("Thinkpad T510");
		order.setStatus("confirmed");
		
		CustomerInfo customerInfo = new CustomerInfo();
		customerInfo.setName("Purusottam Admin");
		customerInfo.setAddress("WallStreet");
		customerInfo.setEmail("purusottam16@gmail.com");
		order.setCustomerInfo(customerInfo);
		return order;
	}

     
}