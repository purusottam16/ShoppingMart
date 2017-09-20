package com.shoppingmart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoppingmart.model.User;

@Controller
@RequestMapping("/checkout")
public class CheckoutProcessController {
	static final Logger logger = LoggerFactory.getLogger(CheckoutProcessController.class);
	@RequestMapping(value = { "/address.htm" }, method = RequestMethod.GET)
	public String checkoutAddress(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> checkoutAddress()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: checkoutAddress()");
		return "/shopping/shop-checkout1";
	}
	@RequestMapping(value = { "/delivery-method.htm" }, method = RequestMethod.GET)
	public String deliveryMethod(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> deliveryMethod()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: deliveryMethod()");
		return "/shopping/shop-checkout2";
	}
	@RequestMapping(value = { "/backet.htm" }, method = RequestMethod.GET)
	public String backet(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> backet()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: backet()");
		return "/shopping/shop-basket";
	}
	
	@RequestMapping(value = { "/customer-orders.htm" }, method = RequestMethod.GET)
	public String customerOrder(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> customerOrder()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: customerOrder()");
		return "/shopping/customer-orders";
	}
	@RequestMapping(value = { "/payment-method.htm" }, method = RequestMethod.GET)
	public String paymentMethod(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> deliveryMethod()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: deliveryMethod()");
		return "/shopping/shop-checkout3";
	}
	@RequestMapping(value = { "/review.htm" }, method = RequestMethod.GET)
	public String review(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> review()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: review()");
		return "/shopping/shop-checkout4";
	}
	private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        logger.info("Exiting from AppController: getPrincipal()");
        return userName;
    }
}
