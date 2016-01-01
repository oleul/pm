package com.scooby.pms.services.impl;

import java.util.List;

import com.scooby.pms.dao.interfaces.IUserDAO;
import com.scooby.pms.model.HUser;
import com.scooby.pms.services.interfaces.IUserService;

/**
 * @author Monsur
 * 
 */
public class UserService implements IUserService {
	
	private IUserDAO userDao;
	
	public void setUserDao(IUserDAO userDao) {
		this.userDao = userDao;
	}

	public String insertHUser(HUser user){
		return userDao.insertHUser(user);
	}

	public List<HUser> getAllUser(boolean isDeleted) {
		
		return userDao.getAllUser(isDeleted);
	}

	public HUser getUserById(Integer id){
		
		return userDao.getUserById(id);
	}

	public int updateHUser(HUser user) {
		
		return userDao.updateHUser(user);
	}

	public int deleteHUser(Integer userId) {
		
		return userDao.deleteHUser(userId);
	}

	public HUser getUserValidation(HUser user) {
		HUser returnUser = null;
		List<HUser> allUser = userDao.getAllUser(true);
		for(HUser luser: allUser){
			if((luser.getUname().equalsIgnoreCase(user.getUname())) && (luser.getPass().equals(user.getPass()))){
				returnUser = new HUser();
				returnUser = luser;
				break;
			}
		}
		return returnUser;
	}
	
	public HUser getUserByUserName(String name) {
		List<HUser> users = userDao.getAllUser(true);
		HUser selectedUser = null;
		
		for(HUser user : users){
			if(user.getUname().equalsIgnoreCase(name)){
				selectedUser = user;
				break;
			}
		}
		return selectedUser;
	}

}
