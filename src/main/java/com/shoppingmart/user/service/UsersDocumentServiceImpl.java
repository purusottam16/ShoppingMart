package com.shoppingmart.user.service;
 
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmart.model.UserDocument;
import com.shoppingmart.user.dao.UserDocumentDao;
import com.shoppingmart.user.dao.UsersDocumentDaoImpl;
 
 
@Service("usersDocumentService")
@Transactional
public class UsersDocumentServiceImpl implements UserDocumentService{
	static final Logger logger = LoggerFactory.getLogger(UsersDocumentServiceImpl.class);
    @Autowired
    UserDocumentDao dao;
 
    public UserDocument findById(int id) {
        return dao.findById(id);
    }
 
    public List<UserDocument> findAll() {
        return dao.findAll();
    }
 
    public List<UserDocument> findAllByUserId(int userId) {
        return dao.findAllByUserId(userId);
    }
     
    public void saveDocument(UserDocument document){
        dao.save(document);
    }
 
    public void deleteById(int id){
        dao.deleteById(id);
    }
     
}