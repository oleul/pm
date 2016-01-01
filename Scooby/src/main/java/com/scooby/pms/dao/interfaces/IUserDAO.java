package com.scooby.pms.dao.interfaces;

import java.util.List;

import com.scooby.pms.model.HUser;

/**
 * @author Monsur
 * 
 */
public interface IUserDAO {

	public List<HUser> getAllUser(boolean isDeleted);
	
	public HUser getUserById(Integer id);
	
	public String insertHUser(HUser product);
	
	public int updateHUser(HUser user);
	
	public int deleteHUser(Integer userId);
}
