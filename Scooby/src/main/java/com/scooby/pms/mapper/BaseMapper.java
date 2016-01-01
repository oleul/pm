package com.scooby.pms.mapper;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/**
 * @author Monsur
 * 
 */
public class BaseMapper {
	protected boolean findColumnNames(ResultSet rs, String columnLevel) throws SQLException {
	    if (rs == null) {
	      return false;
	    }
	    ResultSetMetaData rsMetaData = rs.getMetaData();
	    int numberOfColumns = rsMetaData.getColumnCount();
	    boolean Fo=false;
	    // get the column names; column indexes start from 1
	    for (int i = 1; i < numberOfColumns + 1; i++) {
	      String columnName = rsMetaData.getColumnName(i);
	      if(columnName.equalsIgnoreCase(columnLevel)){
	    	  Fo=true;
	    	  break;
	      }
	    }
	    
	    return Fo;
	}
}
