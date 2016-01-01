package com.scooby.pms.dao.interfaces;

import java.util.List;

import com.scooby.pms.model.HSupportingdata;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* ISupportingdataDAO.java
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

public interface ISupportingdataDAO {
	
	public List<HSupportingdata> getSupportingDataByType(boolean isDeleted, String type);
	
	public HSupportingdata getSupportingDataById(Integer id);
	
	//public int insertHUser(HUser product);
	
	//public int updateHUser(HUser user);
	
	//public int deleteHUser(Integer userId);
}
