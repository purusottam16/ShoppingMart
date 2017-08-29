package com.shoppingmart.email.service;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoppingmart.model.ProductOrder;
 
 
@Service("orderService")
public class OrderServiceImpl implements OrderService{
 
    @Autowired
    MailService mailService;
 
    @Override
    public void sendOrderConfirmation(ProductOrder productOrder) {
        mailService.sendEmail(productOrder);
    }
     
}