package com.shoppingmart.service;
 
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmart.dao.UserProfileDao;
import com.shoppingmart.dao.UserProfileDaoImpl;
import com.shoppingmart.model.UserProfile;
 
 
 
@Service("userProfileService")
@Transactional
public class UserProfileServiceImpl implements UserProfileService{
	static final Logger logger = LoggerFactory.getLogger(UserProfileServiceImpl.class);
    @Autowired
    UserProfileDao dao;
     
    public UserProfile findById(int id) {
        return dao.findById(id);
    }
 
    public UserProfile findByType(String type){
        return dao.findByType(type);
    }
 
    public List<UserProfile> findAll() {
        return dao.findAll();
    }
}