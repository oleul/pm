package com.scooby.pms.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

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
* SupportingdataMapper.java
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

public class SupportingdataMapper extends BaseMapper implements RowMapper<HSupportingdata>{
	public HSupportingdata mapRow(ResultSet rs, int rowNum) throws SQLException {
		HSupportingdata supportingData = new HSupportingdata();
		
		if (findColumnNames(rs, "id")) {
			supportingData.setId(rs.getInt("id"));
		}
		
		if (findColumnNames(rs, "deleted")) {
			supportingData.setDeleted(rs.getBoolean("deleted"));
		}
		
		if (findColumnNames(rs, "modifierid")) {
			supportingData.setModId(rs.getString("modifierid"));
		}
		
		if (findColumnNames(rs, "datavalue")) {
			supportingData.setDatavalue(rs.getString("datavalue"));
		}
		
		if (findColumnNames(rs, "valueType")) {
			supportingData.setValuetype(rs.getString("valueType"));
		}
				
		return supportingData;
	}
}
