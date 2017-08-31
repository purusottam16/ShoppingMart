package com.shoppingmart.quartz.processor;

import org.springframework.batch.item.ItemProcessor;

import com.shoppingmart.model.User;


public class UserBatchProcessor implements ItemProcessor<User, User>{

	
	@Override
	public User process(User result) throws Exception {
		System.out.println("Processing result :"+result);
		
		/*
		 * Only return results which are more than 75%
		 * 
		 */
		if(result.getFirstName().equalsIgnoreCase("Puru")){
			return null;
		}
		
		return result;
	}

}
