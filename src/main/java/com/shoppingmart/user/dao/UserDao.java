package com.shoppingmart.user.dao;
 
import java.util.List;

import com.shoppingmart.model.User;
 
 
 
public interface UserDao {
 
    User findById(int id);
     
    User findBySSO(String sso);
     
    void save(User user);
    
    User findByEmail(String email);
     
    void deleteBySSO(String sso);
     
    List<User> findAllUsers();
 
}