package com.shoppingmart.auth.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.shoppingmart.auth.abs.AbstractAuthenticate;
import com.shoppingmart.auth.factory.ProviderFactory;
import com.shoppingmart.auth.vo.Parameter;
import com.shoppingmart.auth.vo.ServerRequest;
import com.shoppingmart.auth.vo.StreamingData;

/**
 * <p> End point for authenticate and authorization detail </p>
 * @author IgnatiusCipher(IgC)
 * */
@Component("authenticate")
public class AuthenticateEndpoint extends AbstractAuthenticate {
	
	@Autowired
	ProviderFactory factory;

	@Override
	public ServerRequest authenticate(Parameter param) {
		return factory.getInstance(param.getProvider()).authenticate();
	}

	@Override
	public StreamingData collect(Parameter parameter) {
		return factory.getInstance(parameter.getProvider()).authorize(parameter);
	}

	@Override
	public String sendRequest(ServerRequest authenticate) {
		return super.sendRequest(authenticate);
	}

}
