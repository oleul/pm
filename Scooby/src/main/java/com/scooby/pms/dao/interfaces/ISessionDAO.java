package com.scooby.pms.dao.interfaces;

import com.scooby.pms.model.Session;


/**
 * @author Monsur
 * 
 */
public interface ISessionDAO {
	
	public int getSessionLastId();
	
	public int insertSession(Session session)  throws Exception;
}
