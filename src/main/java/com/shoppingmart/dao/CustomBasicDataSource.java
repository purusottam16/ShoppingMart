package com.shoppingmart.dao;

import org.apache.commons.dbcp.BasicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shoppingmart.controller.LogInController;

public class CustomBasicDataSource extends BasicDataSource {
	static final Logger logger = LoggerFactory.getLogger(CustomBasicDataSource.class);
	public CustomBasicDataSource() {
        super();
    }
	@Override
    public synchronized void setPassword(String encodedPassword){
        try {
        	//super.setPassword(PRMDEScrypto.decrypt(encodedPassword));
        	super.setPassword(encodedPassword);
		} catch (Exception e) {
		//	e.printStackTrace();
		}
    }
	

	
	
}