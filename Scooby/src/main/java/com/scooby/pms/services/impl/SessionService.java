package com.scooby.pms.services.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.scooby.pms.dao.interfaces.ISessionDAO;
import com.scooby.pms.model.HUser;
import com.scooby.pms.model.Session;
import com.scooby.pms.model.UserSession;
import com.scooby.pms.services.interfaces.ISessionService;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* SessionService.java
* --------------------
* Created on Jan 01, 2016
*
* $Revision: $
* $Author: $
* $Source: $
* $Id:  $
*
* Jan 01, 2016: Original version (Monsur)
*
*/

public class SessionService implements ISessionService {
	
	private final Logger logger = LoggerFactory.getLogger(SessionService.class);
	
	private ISessionDAO sessionDao;
	
	private UserSession userSession;
	
	public void setSessionDao(ISessionDAO sessionDao) {
		this.sessionDao = sessionDao;
	}

	public void setUserSession(UserSession userSession) {
		this.userSession = userSession;
	}

	public UserSession getUserSession() {
		return userSession;
	}

	public UserSession insertSession(HttpServletRequest request, HUser user) throws Exception {
		if (!isSessionValid()) {
			// sets session info
			Session session = new Session();
			session.setId(-1);
			session.setDeleted(false);
			session.setModId(user.getUname());
			session.setUser(user);
			session.setReferrer(request.getHeader("referer"));
			session.setBrowser(request.getHeader("user-agent"));
			session.setSearchstring(request.getQueryString());

			String requestUrl = request.getRequestURL().toString();
			requestUrl = requestUrl.replaceAll("'", "''");
			session.setLocation(requestUrl);

			session.setClientIpAddress(request.getRemoteAddr());
			Date date = new Date();
			
			session.setSessionStart(date);
			session.setSessionEnd(date);

			// insert session info in DB
			int sessionId = sessionDao.insertSession(session);

			// update current web session
			userSession.setSessionId(sessionId);
			userSession.setUser(user);
		}// session not set

		logger.info("User Session Id - > " + userSession.getSessionId());
		return userSession;
	}

	public boolean isSessionValid() {
		return (userSession.getSessionId() > 0 ? true : false);
	}

	public void invalidateSession(int sessionId) {
		userSession.setSessionId(0);
		
	}

}
