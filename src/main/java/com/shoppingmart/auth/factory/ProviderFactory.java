package com.shoppingmart.auth.factory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.shoppingmart.auth.provider.Provider;
import com.shoppingmart.auth.provider.impl.FacebookProvider;
import com.shoppingmart.auth.provider.impl.GmailProvider;
import com.shoppingmart.auth.util.AppConstant;


@Component("providerFactory")
public class ProviderFactory {
	
	@Autowired
	GmailProvider gmailProvider;
	
	
	@Autowired
	FacebookProvider facebookProvider;
	
	private  String providerName;
	
	public ProviderFactory(){
		
	}
	
	public ProviderFactory(String providerName) {
		this.providerName = providerName;
	}
	
	public Provider getProvider(){
		Provider provider = null;
		if(providerName.equalsIgnoreCase(AppConstant.FACEBOOK_PROVIDER)){
			provider = facebookProvider;
		}
		if(providerName.equalsIgnoreCase(AppConstant.GMAIL_PROVIDER)){
			provider = gmailProvider;
		}
		return provider;
	}
	
	public Provider getInstance(String providerName){
		Provider provider = null;
		if(providerName.equalsIgnoreCase(AppConstant.FACEBOOK_PROVIDER)){
			provider = facebookProvider;
		}
		if(providerName.equalsIgnoreCase(AppConstant.GMAIL_PROVIDER)){
			provider = gmailProvider;
		}
		return provider;
	}
	
}
