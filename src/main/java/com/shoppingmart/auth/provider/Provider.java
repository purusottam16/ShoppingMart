package com.shoppingmart.auth.provider;

import java.net.URL;
import java.net.URLConnection;

import com.shoppingmart.auth.vo.Parameter;
import com.shoppingmart.auth.vo.ServerRequest;
import com.shoppingmart.auth.vo.StreamingData;

public interface Provider {
	StreamingData authorize(Parameter parameter); 
	ServerRequest authenticate();
	StringBuilder retrieveDataFromServer(URL url,URLConnection connection);
}
