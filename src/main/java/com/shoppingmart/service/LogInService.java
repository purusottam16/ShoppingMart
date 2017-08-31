package com.shoppingmart.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.shoppingmart.dao.LogInDao;
import com.shoppingmart.model.UserProfile;
@Service
public class LogInService implements UserDetailsService{

	@Autowired
	private LogInDao logInDao;
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		com.shoppingmart.model.User info= logInDao.findUserInfo(username);
		if(info == null){
			throw new UsernameNotFoundException("Username not found in database");
		}
		
		Set<UserProfile> userProfiles=info.getUserProfiles();		
		List<GrantedAuthority> authorities =new ArrayList<GrantedAuthority>();
		if(userProfiles !=null){
			for(UserProfile profile : userProfiles){
				GrantedAuthority grantedAuthority =new SimpleGrantedAuthority(profile.getType());
				authorities.add(grantedAuthority);
			}
			
		}
		UserDetails userDetails =new User(info.getEmail(),info.getPassword(), authorities);
		return userDetails;
	}

}
