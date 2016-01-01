package com.scooby.pms.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.scooby.pms.utils.JdbcService;

/* ========================================
* Scooby v. 1.0 class library
* ========================================
*
* http://www.scooby.com
*
* (C) Copyright 2000-2010, by WebHawksIT.
*
* --------------------
* BaseDao.java
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
public class BaseDao {
	private JdbcService jdbcService;
	
	public JdbcService getJdbcService() {
		return jdbcService;
	}


	public void setJdbcService(JdbcService jdbcService) {
		this.jdbcService = jdbcService;
	}

	protected String getCommonArgs() {

		return "deleted = 0, modifierid = 1";
	}
	
}
