package com.scooby.pms.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.scooby.pms.dao.interfaces.IUserDAO;
import com.scooby.pms.mapper.UserMapper;
import com.scooby.pms.model.HUser;

/**
 * @author Monsur
 * 
 */
public class UserDAO extends BaseDao implements IUserDAO {

	private final Logger logger = LoggerFactory.getLogger(UserDAO.class);

	// Select All
	public List<HUser> getAllUser(boolean isDeleted) {
		List<HUser> allUser = new ArrayList<HUser>();
		try {
			if (isDeleted)
				allUser = getJdbcService().getJdbcTemplate().query(
						"SELECT * FROM scoobyuser WHERE DELETED = 0",
						new Object[] {}, new UserMapper());
			else
				allUser = getJdbcService().getJdbcTemplate().query("SELECT * FROM scoobyuser",
						new Object[] {}, new UserMapper());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return allUser;
	}

	// Select by id
	public HUser getUserById(Integer id) {

		HUser user = new HUser();
		try {
			user = getJdbcService().getJdbcTemplate()
					.queryForObject(
							"SELECT * FROM scoobyuser WHERE id =" + id
									+ " AND DELETED = 0", new UserMapper());
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return user;
	}

	// Insert
	public String insertHUser(HUser user) {
		String uid = "";
		try {
			//getTransactionManager().
			/*List<HUser> allUser = getAllUser(false);

			int lastId = allUser.size();

			nextid = lastId + 1;
*/
			StringBuffer sql = new StringBuffer("INSERT INTO scoobyuser ");

			sql.append("(userName, userId, roleId, password, deleted, modifierid) VALUES( '");

			sql.append(user.getUname() + "','" + user.getUid() + "'," + user.getRole().getId()
					+ ",'" + user.getPass() + "'," + user.getDeleted() + ",'"
					+ user.getModId() + "')");

			logger.info("HScoobyuser Insert Query - > " + sql.toString());

			getJdbcService().getJdbcTemplate().execute(sql.toString());

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return uid;
	}

	// Update
	public int updateHUser(HUser user) {
		int nextid = 0;
		/*try {
			StringBuffer sql = new StringBuffer("UPDATE T_USER SET");

			sql.append(" deleted =" + user.getDeleted());
			sql.append(", modifierid =" + user.getModId());
			sql.append(", username ='" + user.getUname() + "'");
			sql.append(", password ='" + user.getPass() + "'");
			sql.append(", typeid =" + user.getType().getId());

			sql.append(" WHERE id =" + user.getId());

			logger.info("HUser Update Query - > " + sql.toString());

			getJdbcService().getJdbcTemplate().execute(sql.toString());

			nextid = user.getId();

		} catch (Exception ex) {
			ex.printStackTrace();
		}*/
		return nextid;
	}

	// Soft Delete
	public int deleteHUser(Integer userId) {
		int nextid = 0;
		/*try {
			StringBuffer sql = new StringBuffer("UPDATE T_USER SET");

			sql.append(" deleted = 1");

			sql.append(" WHERE id =" + userId);

			logger.info("HUser Delete Query - > " + sql.toString());

			getJdbcService().getJdbcTemplate().execute(sql.toString());

			nextid = userId;
		} catch (Exception ex) {
			ex.printStackTrace();
		}*/
		return nextid;
	}
}
