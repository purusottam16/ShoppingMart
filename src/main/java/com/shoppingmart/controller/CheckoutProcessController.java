package com.shoppingmart.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoppingmart.entities.Address;
import com.shoppingmart.model.DeliveryMethod;
import com.shoppingmart.model.PaymentGateway;
import com.shoppingmart.model.User;
import com.shoppingmart.model.UserChechoutDetails;
import com.shoppingmart.service.AddressService;
import com.shoppingmart.service.AddressServiceImpl;

@Controller
@RequestMapping("/checkout")
public class CheckoutProcessController {
	static final Logger logger = LoggerFactory.getLogger(CheckoutProcessController.class);
	@Autowired
	@Qualifier("addressService")
	AddressService addressService;

	@RequestMapping(value = { "/address.htm" }, method = RequestMethod.GET)
	public String checkoutAddress(ModelMap model,
			@ModelAttribute("userCheckoutDetails") UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> checkoutAddress()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		model.addAttribute("countries", addressService.getAllCountry());
		// model.addAttribute("states", addressService.getAllStates());
		// model.addAttribute("cities", addressService.getAllDistrict());
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: checkoutAddress()");
		return "/shopping/shop-checkout1";
	}

	@RequestMapping(value = { "/address.htm" }, method = RequestMethod.POST)
	public String submitAddress(ModelMap model,
			@ModelAttribute("userCheckoutDetails") UserChechoutDetails checkoutDetails, Locale locale,
			Principal principal, BindingResult result) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> checkoutAddress()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		logger.info("Exiting from CheckoutProcessController: checkoutAddress()");
		return "redirect:/checkout/delivery-method.htm";
	}

	@RequestMapping(value = { "/delivery-method.htm" }, method = RequestMethod.GET)
	public String deliveryMethod(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> deliveryMethod()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: deliveryMethod()");
		return "/shopping/shop-checkout2";
	}

	@RequestMapping(value = { "/delivery-method.htm" }, method = RequestMethod.POST)
	public String processDeliveryMethod(ModelMap model, UserChechoutDetails checkoutDetails, Locale locale,
			Principal principal) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> deliveryMethod()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: deliveryMethod()");
		return "redirect:/checkout/payment-method.htm";
	}

	@RequestMapping(value = { "/backet.htm" }, method = RequestMethod.GET)
	public String backet(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> backet()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: backet()");
		return "/shopping/shop-basket";
	}

	@RequestMapping(value = { "/customer-orders.htm" }, method = RequestMethod.GET)
	public String customerOrder(ModelMap model) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> customerOrder()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: customerOrder()");
		return "/shopping/customer-orders";
	}

	@RequestMapping(value = { "/customer-order.htm" }, method = RequestMethod.GET)
	public String getCustomerOrder(ModelMap model) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> getCustomerOrder()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: getCustomerOrder()");
		return "/shopping/customer-order";
	}

	@RequestMapping(value = { "/payment-method.htm" }, method = RequestMethod.GET)
	public String paymentMethod(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> paymentMethod()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: paymentMethod()");
		return "/shopping/shop-checkout3";
	}

	@RequestMapping(value = { "/payment-method.htm" }, method = RequestMethod.POST)
	public String processPaymentMethod(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> processPaymentMethod()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: processPaymentMethod()");
		return "redirect:/checkout/review.htm";
	}

	@RequestMapping(value = { "/review.htm" }, method = RequestMethod.GET)
	public String review(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> review()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userCheckoutDetails", checkoutDetails);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: review()");
		return "/shopping/shop-checkout4";
	}

	@RequestMapping(value = { "/review.htm" }, method = RequestMethod.POST)
	public String submitReview(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> submitReview()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: submitReview()");
		return "redirect:/checkout/customer-orders.htm";
	}

	@RequestMapping(value = { "/customer-account.htm" }, method = RequestMethod.GET)
	public String customerAccount(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> customerAccount()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: customerAccount()");
		return "/shopping/customer-account";
	}

	@RequestMapping(value = { "/customer-account.htm" }, method = RequestMethod.POST)
	public String editCustomerAccount(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> editCustomerAccount()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: editCustomerAccount()");
		return "redirect:/checkout/customer-orders.htm";
	}

	@RequestMapping(value = { "/customer-wishlist.htm" }, method = RequestMethod.GET)
	public String customerWishList(ModelMap model, UserChechoutDetails checkoutDetails) {
		logger.info("Entering into CheckoutProcessController: >>>>>>> customerWishList()");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		logger.info("Exiting from CheckoutProcessController: customerWishList()");
		return "/shopping/customer-wishlist";
	}

	@ModelAttribute("userCheckoutDetails")
	public UserChechoutDetails createFormBean() {
		UserChechoutDetails checkoutAddress = new UserChechoutDetails();
		/*
		 * List<String> countries=addressService.getAllCountry(); Address
		 * address=new Address(); address.setCountry(new HashSet<>(countries));
		 * address.setCity(new HashSet<>(addressService.getAllDistrict()));
		 * address.setState(new HashSet<>(addressService.getAllStates()));
		 * checkoutAddress.setAddress(address);
		 */
		return checkoutAddress;
	}

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		logger.info("Exiting from AppController: getPrincipal()");
		return userName;
	}

	@RequestMapping(value = { "/allstate.htm" }, method = RequestMethod.GET)
	public List<String> getStateList(@RequestParam("countryName") String countryName) {

		return addressService.getAllStates(countryName);

	}

	@RequestMapping(value = { "/allcity.htm" }, method = RequestMethod.GET)
	public List<String> getCityList(@RequestParam("stateName") String stateName) {

		return addressService.getAllDistrict(stateName);

	}

}
