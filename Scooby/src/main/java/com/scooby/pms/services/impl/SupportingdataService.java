package com.scooby.pms.services.impl;

import java.util.List;

import com.scooby.pms.dao.interfaces.ISupportingdataDAO;
import com.scooby.pms.model.HSupportingdata;
import com.scooby.pms.services.interfaces.ISupportingdataService;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* SupportingdataService.java
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

public class SupportingdataService implements ISupportingdataService {
	
	private ISupportingdataDAO supportingDataDao;
	
	public void setSupportingdataDao(ISupportingdataDAO supportingDataDao) {
		this.supportingDataDao = supportingDataDao;
	}

	public List<HSupportingdata> getSupportingDataByType(boolean isDeleted, String type) {
		return supportingDataDao.getSupportingDataByType(isDeleted, type);
	}

	public HSupportingdata getSupportingDataById(Integer id) {
		return supportingDataDao.getSupportingDataById(id);
	}

	/*public HUserType getUserTypeByType(String type) {
		List<HUserType> utype = userTypeDao.getAllUserType(true);
		HUserType selectedType = new HUserType();
		
		for(HUserType ut : utype){
			if(ut.getType().equalsIgnoreCase(type)){
				selectedType = ut;
				break;
			}
		}
		
		return selectedType;
	}*/

}
