package com.scooby.pms.model;

import com.scooby.pms.model.HUser;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* UserSession.java
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

public class UserSession {
	private int sessionId;
	private HUser user = null;
	
	public UserSession(){
		user = new HUser();
	}
	
	public int getSessionId() {
		return sessionId;
	}
	
	public void setSessionId(int sessionId) {
		this.sessionId = sessionId;
	}
	public HUser getUser() {
		return user;
	}
	public void setUser(HUser user) {
		this.user = user;
	}
	
	
}
