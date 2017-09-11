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
// @RequestMapping("/")
public class ApplicationController {
	static final Logger logger = LoggerFactory.getLogger(ApplicationController.class);

	@RequestMapping(value = { "/womens.htm" }, method = RequestMethod.GET)
	public String womenItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> womenItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: womenItems()");
		return "/product/womens";
	}
	
	@RequestMapping(value = { "/about.htm" }, method = RequestMethod.GET)
	public String about(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> aboutItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: aboutItems()");
		return "/product/about";
	}
	@RequestMapping(value = { "/edit.htm" }, method = RequestMethod.GET)
	public String editAccount(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> aboutItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: aboutItems()");
		return "/product/customer-account";
	}

	@RequestMapping(value = { "/contact.htm" }, method = RequestMethod.GET)
	public String contactItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> contactItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: contactItems()");
		return "/product/contact";
	}

	@RequestMapping(value = { "/icons.htm" }, method = RequestMethod.GET)
	public String iconsItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> iconsItems()");
		User user = new User();
        model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: iconsItems()");
		return "/product/icons";
	}

	@RequestMapping(value = { "/dashboard.htm" }, method = RequestMethod.GET)
	public String indexItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> indexItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: indexItems()");
		return "/product/index";
	}

	@RequestMapping(value = { "/mens.htm" }, method = RequestMethod.GET)
	public String mensItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> mensItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: mensItems()");
		return "/product/mens";
	}

	@RequestMapping(value = { "/single.htm" }, method = RequestMethod.GET)
	public String singleItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> singleItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: singleItems()");
		return "/product/single";
	}

	@RequestMapping(value = { "/typography.htm" }, method = RequestMethod.GET)
	public String typographyItems(ModelMap model) {
		logger.info("Entering into ApplicationController: >>>>>>> typographyItems()");
		User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from ApplicationController: typographyItems()");
		return "/product/typography";
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
