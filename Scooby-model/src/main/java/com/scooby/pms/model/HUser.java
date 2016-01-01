package com.scooby.pms.model;

import com.scooby.pms.model.HObject;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* HUser.java
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

public class HUser extends HObject{
	
	private String uname;
	private String uid;
	private String pass;
	private HSupportingdata role;
	  
	public HUser(){
		role = new HSupportingdata();
   	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public HSupportingdata getRole() {
		return role;
	}

	public void setRole(HSupportingdata role) {
		this.role = role;
	}	
}
