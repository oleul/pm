package com.scooby.pms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.scooby.pms.model.HSupportingdata;
import com.scooby.pms.model.HUser;
import com.scooby.pms.model.UserSession;
import com.scooby.pms.services.interfaces.IUserService;
import com.scooby.pms.services.interfaces.ISupportingdataService;

/**
 * @author Monsur
 * 
 */

@Controller
public class UserController extends BaseController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	private IUserService userService;
	
	private ISupportingdataService supportingDataService;
	
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setSupportingdataService(ISupportingdataService supportingDataService) {
		this.supportingDataService = supportingDataService;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value="/users", method=RequestMethod.GET)
	public ModelAndView getUsersForm(HttpServletRequest request) throws Exception {
		//boolean validSession = getSessionService().isSessionValid();
		
		/*if(!validSession){
			return getLoginView(request);
		}*/
		//List<HUser> users = userService.getAllUser(true);
		List<HSupportingdata> userRole = supportingDataService.getSupportingDataByType(true, "ROLE");
		ModelMap mm = new ModelMap();
		mm.addAttribute("userRole", userRole);
		//mm.addAttribute("userType", userType);
		//mm.addAttribute("validSession", validSession);
		
		return new ModelAndView("users", mm);
	}
	
	@RequestMapping(value="/users/insertuser", method=RequestMethod.POST)
	public ModelAndView insertUser(HttpServletRequest request) throws Exception {
		
		UserSession session = getSessionService().getUserSession();
		
		String requestUri = getStringFromHttpRequest(request);
		
		logger.info("requestUri="+requestUri);
		
		String[] requestUriSplit = requestUri.split("~");
		
		if (requestUriSplit.length < 16) {
			logger.warn("Expecting atleast 16 arguments but received " + requestUriSplit.length);
			return null;
		}
		
		String fname = requestUriSplit[0];
		String mname = requestUriSplit[1];
		String lname = requestUriSplit[2];
		String uname = requestUriSplit[3];
		String email = requestUriSplit[4];
		int role =  Integer.parseInt(requestUriSplit[5]);
		
		String empId = requestUriSplit[6];
		String companyname = requestUriSplit[7];
		String address = requestUriSplit[8];
		String city = requestUriSplit[9];
		String zippcode = requestUriSplit[10];
		String country = requestUriSplit[11];
		String business_category = requestUriSplit[12];
		String designation = requestUriSplit[13];
		String contactnumber = requestUriSplit[14];
		String password = requestUriSplit[15];
				
			
		HSupportingdata Role = new HSupportingdata();
		Role.setId(role);
		
		HSupportingdata userRole = supportingDataService.getSupportingDataById(role);
		
		HUser user = new HUser();
		user.setUname(uname);
		if(userRole.getDatavalue().equals("Client"))
		{
			user.setUid("1");
		} else{
			user.setUid(empId);
		}
		user.setPass(password);
		user.setModId(session.getUser().getUname());
		user.setDeleted(false);
		user.setRole(Role);
		
		
		uname = userService.insertHUser(user);
		
		
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("msg", uname);
		
		return new ModelAndView("result", mm);
	}
	
	@RequestMapping(value="/user/valideduser", method=RequestMethod.POST)
	public ModelAndView userVerify(HttpServletRequest request) throws Exception {
		
		String requestUri = getStringFromHttpRequest(request);
		
		logger.info("requestUri="+requestUri);
		
		String[] requestUriSplit = requestUri.split("~");
		
		if (requestUriSplit.length < 2) {
			logger.warn("Expecting atleast 2 arguments but received " + requestUriSplit.length);
			return null;
		}
		
		String uname = requestUriSplit[0];
		String pass = requestUriSplit[1];
		
		HUser user = new HUser();
		user.setUname(uname);
		user.setPass(pass);
		
		HUser validUser = userService.getUserValidation(user);
		
		if(validUser != null){
			UserSession session = getSessionService().insertSession(request,validUser);
			uname = validUser.getUname();
		}
		
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("msg", uname);
		
		return new ModelAndView("result", mm);
	}
	
	/*@RequestMapping(value="/user/showuser", method=RequestMethod.POST)
	public ModelAndView showUser(HttpServletRequest request) throws Exception {
		
		String requestUri = getStringFromHttpRequest(request);
		
		logger.info("requestUri="+requestUri);
		
		String[] requestUriSplit = requestUri.split("/");
		
		if (requestUriSplit.length < 1) {
			logger.warn("Expecting atleast 1 arguments but received " + requestUriSplit.length);
			return null;
		}
		int userId = Integer.parseInt(requestUriSplit[0]);
				
		HUser user = userService.getUserById(userId);
		
		String result = user.getId()+"/"+user.getType().getId()+"/"+user.getUname()+"/"+user.getPass();
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("msg", result);
		
		return new ModelAndView("result", mm);
	}
	
	@RequestMapping(value="/user/deleteuser", method=RequestMethod.POST)
	public ModelAndView deleteUser(HttpServletRequest request) throws Exception {
		
		String requestUri = getStringFromHttpRequest(request);
		
		logger.info("requestUri="+requestUri);
		
		String[] requestUriSplit = requestUri.split("/");
		
		if (requestUriSplit.length < 1) {
			logger.warn("Expecting atleast 1 arguments but received " + requestUriSplit.length);
			return null;
		}
		int userId = Integer.parseInt(requestUriSplit[0]);
				
		int result = userService.deleteHUser(userId);
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("msg", result);
		
		return new ModelAndView("result", mm);
	}
	
		
	
	
	@RequestMapping(value="/user/logout", method=RequestMethod.POST)
	public ModelAndView userLogout(HttpServletRequest request) throws Exception {
		
		String requestUri = getStringFromHttpRequest(request);
		
		logger.info("requestUri="+requestUri);
		
		getSessionService().invalidateSession(getSessionService().getUserSession().getSessionId());
					
		ModelMap mm = new ModelMap();
		mm.addAttribute("msg", 1);
		
		return new ModelAndView("result", mm);
	}*/
}
