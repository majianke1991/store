package dao;

import java.sql.SQLException;

import beans.Gonglue;

public class GongLueDao {

	public void createGL(Gonglue gl) throws SQLException{
		SqlUtil util = new SqlUtil();
		util.createGonglue(gl);
		
	}
}
