package com.shoppingmart.dao;

import java.util.List;

import com.shoppingmart.model.User;
import com.shoppingmart.model.UserInfo;

public interface LogInDao {
	User findUserInfo(String username);

	List<String> getUserRoles(String username);
}
