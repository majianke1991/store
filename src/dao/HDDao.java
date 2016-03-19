package dao;

import java.sql.SQLException;

import beans.HD;

public class HDDao {
	
	public HD createHD(HD hd) throws SQLException{
		SqlUtil util = new SqlUtil();
		return util.createHD(hd);
	}
}
