package com.scooby.pms.dao.impl;

import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.scooby.pms.dao.interfaces.ISessionDAO;
import com.scooby.pms.model.Session;

/**
 * @author Monsur
 * 
 */
public class SessionDao extends BaseDao implements ISessionDAO {
	private final Logger logger = LoggerFactory.getLogger(SessionDao.class);

	// Select All
	public int getSessionLastId() {
		int lastId = 0;
		try {
			lastId = getJdbcService().getJdbcTemplate().queryForInt(
					"SELECT COUNT(*) FROM T_SESSION");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lastId;
	}

	public int insertSession(Session session) throws Exception {
		int nextid = 0;
		try {
			int lastId = getSessionLastId();

			nextid = lastId + 1;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			StringBuffer sql = new StringBuffer("INSERT INTO T_SESSION ");

			sql.append("(id, deleted, modifierid, userId, referrer, browser, searchstring, clientIpAddress, location, sessionStart, sessionEnd) VALUES( ");

			sql.append(nextid + "," + session.getDeleted() + ","
					+ session.getModId() + ",'" + session.getUser().getUname()
					+ "','" + session.getReferrer() + "','"
					+ session.getBrowser() + "','" + session.getSearchstring()
					+ "','" + session.getClientIpAddress() + "','"
					+ session.getLocation() + "','" + df.format(session.getSessionStart())
					+ "','" + df.format(session.getSessionEnd()) + "')");

			logger.info("Session Insert Query - > " + sql.toString());

			getJdbcService().getJdbcTemplate().execute(sql.toString());

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nextid;
	}

}
