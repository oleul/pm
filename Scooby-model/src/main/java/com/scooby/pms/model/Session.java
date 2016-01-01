package com.scooby.pms.model;

import java.util.Date;

import com.scooby.pms.model.HObject;
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
* Session.java
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

public class Session extends HObject{
	
	private Integer id;
	
	private HUser user;
	
	private String referrer = "";
	
	private String browser = "";
	
	private String searchstring = "";
	
	private String clientIpAddress = "";
	
	private String location = "";
	
	private Date sessionStart;
	
	private Date sessionEnd;

	public HUser getUser() {
		return user;
	}

	public void setUser(HUser user) {
		this.user = user;
	}

	public String getReferrer() {
		return referrer;
	}

	public void setReferrer(String referrer) {
		this.referrer = referrer;
	}

	public String getBrowser() {
		return browser;
	}

	public void setBrowser(String browser) {
		this.browser = browser;
	}

	public String getSearchstring() {
		return searchstring;
	}

	public void setSearchstring(String searchstring) {
		this.searchstring = searchstring;
	}

	public String getClientIpAddress() {
		return clientIpAddress;
	}

	public void setClientIpAddress(String clientIpAddress) {
		this.clientIpAddress = clientIpAddress;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Date getSessionStart() {
		return sessionStart;
	}

	public void setSessionStart(Date sessionStart) {
		this.sessionStart = sessionStart;
	}

	public Date getSessionEnd() {
		return sessionEnd;
	}

	public void setSessionEnd(Date sessionEnd) {
		this.sessionEnd = sessionEnd;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
}
