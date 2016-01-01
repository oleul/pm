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
* HRole.java
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
public class HSupportingdata extends HObject {
	private Integer id;
	private String datavalue;
	private String valuetype;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDatavalue() {
		return datavalue;
	}
	public void setDatavalue(String datavalue) {
		this.datavalue = datavalue;
	}
	public String getValuetype() {
		return valuetype;
	}
	public void setValuetype(String valuetype) {
		this.valuetype = valuetype;
	}
}
