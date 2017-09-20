package com.shoppingmart.dao;
 
import java.util.List;

import com.shoppingmart.entities.UserProfile;

 
 
 
public interface UserProfileDao {
 
    List<UserProfile> findAll();
     
    UserProfile findByType(String type);
     
    UserProfile findById(int id);
}