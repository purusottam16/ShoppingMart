package com.shoppingmart.user.validator;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.shoppingmart.model.FileBucket;
import com.shoppingmart.user.service.UsersServiceImpl;
 
 
 
 
@Component
public class FileValidator implements Validator {
	static final Logger logger = LoggerFactory.getLogger(FileValidator.class);
    public boolean supports(Class<?> clazz) {
        return FileBucket.class.isAssignableFrom(clazz);
    }
 
    public void validate(Object obj, Errors errors) {
        FileBucket file = (FileBucket) obj;
             
        if(file.getFile()!=null){
            if (file.getFile().getSize() == 0) {
                errors.rejectValue("file", "missing.file");
            }
        }
    }
}