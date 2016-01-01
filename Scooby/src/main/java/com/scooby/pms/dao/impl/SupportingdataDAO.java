package com.scooby.pms.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.scooby.pms.dao.interfaces.ISupportingdataDAO;
import com.scooby.pms.mapper.UserMapper;
import com.scooby.pms.mapper.SupportingdataMapper;
import com.scooby.pms.model.HSupportingdata;
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
* SupportingdataDAO.java
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

public class SupportingdataDAO extends BaseDao implements ISupportingdataDAO {

	public List<HSupportingdata> getSupportingDataByType(boolean isDeleted, String type) {
		List<HSupportingdata> allUserType = new ArrayList<HSupportingdata>();
		try{
			if(isDeleted)
				allUserType = getJdbcService().getJdbcTemplate().query("SELECT * FROM supportingdata WHERE DELETED = 0 AND valueType ='"+type+"'", new Object[] {}, new SupportingdataMapper());
			else
				allUserType = getJdbcService().getJdbcTemplate().query("SELECT * FROM supportingdata WHERE valueType ='"+type+"'", new Object[] {}, new SupportingdataMapper());
		} catch(Exception ex){
			ex.printStackTrace();
		}
		return allUserType;
	}

	public HSupportingdata getSupportingDataById(Integer id) {
		HSupportingdata supportingData = new HSupportingdata();
		try{	
			supportingData = getJdbcService().getJdbcTemplate().queryForObject("SELECT * FROM supportingdata WHERE id ="+id+" AND DELETED = 0", new SupportingdataMapper());
		} catch(Exception ex){
			ex.printStackTrace();
		}
		
		return supportingData;
	}

}
