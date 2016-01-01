package com.scooby.pms.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import com.scooby.pms.services.interfaces.ISessionService;

/**
 * @author Monsur
 * 
 */
public class BaseController {
	
	private ISessionService sessionService;
	
	
	public ISessionService getSessionService() {
		return sessionService;
	}

	public void setSessionService(ISessionService sessionService) {
		this.sessionService = sessionService;
	}

	public String getStringFromHttpRequest(HttpServletRequest request) throws Exception {

		InputStream is = request.getInputStream();
		String str = "";

		if (is != null) {
			Writer writer = new StringWriter();

			char[] buffer = new char[1024];
			try {
				Reader reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
				int n;
				while ((n = reader.read(buffer)) != -1) {
					writer.write(buffer, 0, n);
				}
			} finally {
				is.close();
			}
			str = writer.toString();
		} else {
			str = "";
		}
		return str;
	}
	
	public String convertDateFormate(String dt){
		String formatedDate = "";
		
		String[] splitdt= dt.split("-");
		formatedDate = splitdt[2]+"-"+splitdt[0]+"-"+splitdt[1];
		
		return formatedDate;
		
	}
	
	/*public ModelAndView getLoginView(HttpServletRequest request){

		ModelMap mm = new ModelMap();
		return new ModelAndView("login", mm);
	}*/

}
