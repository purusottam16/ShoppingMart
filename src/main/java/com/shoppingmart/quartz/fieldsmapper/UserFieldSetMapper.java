package com.shoppingmart.quartz.fieldsmapper;
 
import java.util.HashSet;
import java.util.Set;

import org.joda.time.LocalDate;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;
import org.springframework.validation.BindException;

import com.shoppingmart.model.User;
import com.shoppingmart.model.UserProfile;
 
public class UserFieldSetMapper implements FieldSetMapper<User>{
 
    public User mapFieldSet(FieldSet fieldSet) throws BindException {
        User result = new User();
        result.setFirstName(fieldSet.readString(0));
        result.setLastName(fieldSet.readString(1));//(new LocalDate(fieldSet.readDate(1,"dd/MM/yyyy")));
        result.setEmail(fieldSet.readString(2));
        result.setSsoId(fieldSet.readString(3));
        Set<UserProfile> profile=new HashSet<>();
        UserProfile profile2=new UserProfile();
        		profile2.setType(fieldSet.readString(4));
        profile.add(profile2);
        result.setUserProfiles(profile);
        return result;
    }
 
}