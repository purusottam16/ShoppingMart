package com.shoppingmart.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.shoppingmart.dao.LogInDao;
import com.shoppingmart.model.UserInfo;
@Service
public class LogInService implements UserDetailsService{

	@Autowired
	private LogInDao logInDao;
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		UserInfo info= logInDao.findUserInfo(username);
		if(info == null){
			throw new UsernameNotFoundException("Username not found in database");
		}
		List<String> roles= logInDao.getUserRoles(username);
		List<GrantedAuthority> authorities =new ArrayList<GrantedAuthority>();
		if(roles !=null){
			for(String role : roles){
				GrantedAuthority grantedAuthority =new SimpleGrantedAuthority(role);
				authorities.add(grantedAuthority);
			}
			
		}
		UserDetails userDetails =new User(info.getUsername(),info.getPassword(), authorities);
		return userDetails;
	}

}
