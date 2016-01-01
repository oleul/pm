package com.scooby.pms.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.scooby.pms.model.HSupportingdata;
import com.scooby.pms.model.HUser;

/**
 * @author Monsur
 * 
 */
public class UserMapper extends BaseMapper implements RowMapper<HUser> {
	
	
	public HUser mapRow(ResultSet rs, int rowNum) throws SQLException {
		HUser user = new HUser();

		if (findColumnNames(rs, "userName")) {
			user.setUname(rs.getString("userName"));
		}
		
		if (findColumnNames(rs, "userId")) {
			user.setUname(rs.getString("userId"));
		}
		
		if (findColumnNames(rs, "roleId")) {
			user.getRole().setId(rs.getInt("roleId"));
		}
		
		if (findColumnNames(rs, "password")) {
			user.setPass(rs.getString("password"));
		}
		
		if (findColumnNames(rs, "deleted")) {
			user.setDeleted(rs.getBoolean("deleted"));
		}
		
		if (findColumnNames(rs, "modifierid")) {
			user.setModId(rs.getString("modifierid"));
		}
				
		return user;
	}

}
