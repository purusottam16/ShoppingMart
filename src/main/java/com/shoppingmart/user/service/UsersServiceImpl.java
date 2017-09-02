package com.shoppingmart.user.service;
 
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmart.model.User;
import com.shoppingmart.user.dao.UserDao;
 
 
 
@Service("usersService")
@Transactional
public class UsersServiceImpl implements UserService{
	static final Logger logger = LoggerFactory.getLogger(UsersServiceImpl.class);
    @Autowired
    @Qualifier("usersDao")
    private UserDao dao;
 
    public User findById(int id) {
        return dao.findById(id);
    }
 
    public User findBySSO(String sso) {
        User user = dao.findBySSO(sso);
        return user;
    }
 
    public void saveUser(User user) {
        dao.save(user);
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if(entity!=null){
            entity.setPassword(user.getPassword());
            entity.setFirstName(user.getFirstName());
            entity.setLastName(user.getLastName());
            entity.setEmail(user.getEmail());
            entity.setUserDocuments(user.getUserDocuments());
        }
    }
 
     
    public void deleteUserBySSO(String sso) {
        dao.deleteBySSO(sso);
    }
 
    public List<User> findAllUsers() {
        return dao.findAllUsers();
    }
 
    public boolean isUserSSOUnique(Integer id, String sso) {
        User user = findBySSO(sso);
        return ( user == null || ((id != null) && (user.getId() == id)));
    }
     
}