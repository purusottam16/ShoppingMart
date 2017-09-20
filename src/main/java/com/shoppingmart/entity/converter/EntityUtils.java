package com.shoppingmart.entity.converter;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.shoppingmart.entities.UserEnity;
import com.shoppingmart.entities.UserProfile;
import com.shoppingmart.model.User;
import com.shoppingmart.util.DateUtil;

@Component
public class EntityUtils implements InitializingBean{
	
	@Autowired
    private   PasswordEncoder passwordEncoder;
	
	public PasswordEncoder getPasswordEncoder() {
		return passwordEncoder;
	}
	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}
	public static void cast(Object o) throws IllegalArgumentException, IllegalAccessException{
        Class<? extends Object> clazz = o.getClass();
        //clazz.cast(o);
        System.out.println(clazz.getName() + " >> " + clazz.getDeclaredFields().length);
        for(Field f: clazz.getDeclaredFields()){
            f.setAccessible(true);
            System.out.println( f.getName()  + "=" + f.get(o));
        }
    }
	public  User getUser(com.shoppingmart.entities.UserEnity entity){
		User user =new User();
		Set<com.shoppingmart.model.UserProfile> profiles=new HashSet<>();    	
    	if(entity!=null){
    		if(entity.getUserProfiles()!=null){
        		for(com.shoppingmart.entities.UserProfile userProfile : entity.getUserProfiles()){
        			com.shoppingmart.model.UserProfile profile=new com.shoppingmart.model.UserProfile();
        	    	profile.setType(userProfile.getType());
        	    	profiles.add(profile);
        		}
        	}
    		user.setFirstName(entity.getFirstName());
        	user.setLastName(entity.getLastName());
        	user.setDob(user.getDob());
        	user.setGender(entity.getGender());
        	user.setEmail(entity.getEmail());
        	user.setUserProfiles(profiles);
    	}
		
    	
		return user;
		
	}
	public  com.shoppingmart.entities.UserEnity getUserEntity(User user){
		
		UserEnity entity=new UserEnity();
    	Set<UserProfile> profiles=new HashSet<>();    	
    	if(user!=null && user.getUserProfiles()!=null){
    		for(com.shoppingmart.model.UserProfile userProfile : user.getUserProfiles()){
    			UserProfile profile=new UserProfile();
    	    	profile.setType(userProfile.getType());
    	    	profiles.add(profile);
    		}
    		entity.setFirstName(user.getFirstName());
        	entity.setLastName(user.getLastName());
        	entity.setDob(user.getDob());
        	entity.setGender(user.getGender());
        	entity.setEmail(user.getEmail());
        	entity.setUserProfiles(profiles);
        	entity.setPassword(passwordEncoder.encode(user.getPassword()));
    	}
    	
		return entity;
		
	}
	public  List<User> getUserList(List<com.shoppingmart.entities.UserEnity> entities){		
		List<User> users =new ArrayList<>();
		if(entities !=null){
			for(com.shoppingmart.entities.UserEnity entity : entities){
				users.add(getUser(entity));
			}
		}    	
		return users;
		
	}
	
	public static void main(String args[]) throws IllegalArgumentException, IllegalAccessException{
		
		//EntityUtils.cast(new ClassA("A","B",1));
		//EntityUtils.cast(new ClassB("A","B",2.25));
    }
	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("afterPropertiesSet() =============>>>>>>>>   called");
		
	}

}