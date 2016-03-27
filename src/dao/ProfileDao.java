package dao;

import java.sql.SQLException;

import beans.Profile;

public class ProfileDao {

	public void createProfile(Profile profile) throws SQLException{
		SqlUtil sqlUtil = new SqlUtil();
		sqlUtil.createUser(profile);
	}
	
	public Profile findProfile(long phoneNum,String password) throws SQLException{
		SqlUtil sqlUtil = new SqlUtil();
		return sqlUtil.findUser(phoneNum,password);	
	}
}
