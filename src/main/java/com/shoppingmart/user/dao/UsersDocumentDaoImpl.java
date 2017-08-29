package com.shoppingmart.user.dao;
 
import java.util.List;
 
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.shoppingmart.model.UserDocument;
 
 
@Repository("usersDocumentDao")
public class UsersDocumentDaoImpl extends AbstractDao<Integer, UserDocument> implements UserDocumentDao{
	static final Logger logger = LoggerFactory.getLogger(UsersDocumentDaoImpl.class);
    @SuppressWarnings("unchecked")
    public List<UserDocument> findAll() {
        Criteria crit = createEntityCriteria();
        return (List<UserDocument>)crit.list();
    }
 
    public void save(UserDocument document) {
        persist(document);
    }
 
     
    public UserDocument findById(int id) {
        return getByKey(id);
    }
 
    @SuppressWarnings("unchecked")
    public List<UserDocument> findAllByUserId(int userId){
        Criteria crit = createEntityCriteria();
        Criteria userCriteria = crit.createCriteria("user");
        userCriteria.add(Restrictions.eq("id", userId));
        return (List<UserDocument>)crit.list();
    }
 
     
    public void deleteById(int id) {
        UserDocument document =  getByKey(id);
        delete(document);
    }
 
}