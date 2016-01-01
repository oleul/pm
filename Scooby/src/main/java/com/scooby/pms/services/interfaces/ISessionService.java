package com.scooby.pms.services.interfaces;

import javax.servlet.http.HttpServletRequest;

import com.scooby.pms.model.HUser;
import com.scooby.pms.model.Session;
import com.scooby.pms.model.UserSession;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* ISessionService.java
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

public interface ISessionService {
	
	public UserSession insertSession(HttpServletRequest request, HUser user)  throws Exception;
	
	public boolean isSessionValid();

	public void invalidateSession(int sessionId);
	
	public UserSession getUserSession();
}
