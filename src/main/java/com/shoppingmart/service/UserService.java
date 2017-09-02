package com.shoppingmart.service;

import java.util.List;

import com.shoppingmart.model.User;

public interface UserService {

	User findById(int id);

	User findBySSO(String sso);

	void saveUser(User user);

	void updateUser(User user);

	void deleteUserBySSO(String sso);

	List<User> findAllUsers();

	User findByEmail(String email);

	boolean isUserSSOUnique(Integer id, String sso);

	boolean isUserEmailUnique(Integer id, String email);

}