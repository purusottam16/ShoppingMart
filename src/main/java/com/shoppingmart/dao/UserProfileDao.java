package com.shoppingmart.dao;
 
import java.util.List;

import com.shoppingmart.model.UserProfile;
 
 
 
public interface UserProfileDao {
 
    List<UserProfile> findAll();
     
    UserProfile findByType(String type);
     
    UserProfile findById(int id);
}