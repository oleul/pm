package com.scooby.pms.services.interfaces;

import java.util.List;

import com.scooby.pms.model.HUser;

/**
 * @author Monsur
 * 
 */
public interface IUserService {
	
	public List<HUser> getAllUser(boolean isDeleted);
	
	public HUser getUserById(Integer id);
	
	public String insertHUser(HUser user); 
	
	public int updateHUser(HUser user);
	
	public int deleteHUser(Integer userId);
	
	public HUser getUserValidation(HUser user);
	
	public HUser getUserByUserName(String name);
}
