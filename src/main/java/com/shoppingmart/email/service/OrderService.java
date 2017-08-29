package com.shoppingmart.email.service;

import com.shoppingmart.model.ProductOrder;

public interface OrderService {
 
    public void sendOrderConfirmation(ProductOrder productOrder);
     
}