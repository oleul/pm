package com.scooby.pms.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.scooby.pms.model.UserSession;
import com.scooby.pms.services.interfaces.ISessionService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController extends BaseController implements ApplicationContextAware {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private ApplicationContext applicationContext;

	public void setApplicationContext(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView signin(HttpServletRequest request) throws Exception {
		boolean validSession = getSessionService().isSessionValid();
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("validSession", validSession);
		
		return new ModelAndView("login", mm);
	}
	
	@RequestMapping(value="/pms", method=RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request) throws Exception {
		boolean validSession = getSessionService().isSessionValid();
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("validSession", validSession);
		
		return new ModelAndView("home", mm);
	}
	
	
}

