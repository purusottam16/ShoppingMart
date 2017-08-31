package com.shoppingmart.quartz.processor;

import org.springframework.batch.item.ItemProcessor;

import com.shoppingmart.model.ProductOrder;


public class ProductBatchProcessor implements ItemProcessor<ProductOrder, ProductOrder>{

	
	@Override
	public ProductOrder process(ProductOrder result) throws Exception {
		System.out.println("Processing result :"+result);
		
		/*
		 * Only return results which are more than 75%
		 * 
		 */
		if(result.getStatus().equalsIgnoreCase("Delivered")){
			return null;
		}
		
		return result;
	}

}
