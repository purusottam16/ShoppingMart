package com.shoppingmart.user.dao;
 
import java.util.List;

import com.shoppingmart.entities.UserEnity;
import com.shoppingmart.model.User;
 
 
 
public interface UserDao {
 
    User findById(int id);
     
    User findBySSO(String sso);
     
    void save(UserEnity entity);
    
    User findByEmail(String email);
     
    void deleteBySSO(String sso);
     
    List<User> findAllUsers();    
    
 
}