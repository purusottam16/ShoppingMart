package com.shoppingmart.service;
 
import java.util.List;

import com.shoppingmart.model.UserProfile;
 
 
 
public interface UserProfileService {
 
    UserProfile findById(int id);
 
    UserProfile findByType(String type);
     
    List<UserProfile> findAll();
}
  