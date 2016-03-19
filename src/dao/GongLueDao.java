package dao;

import java.sql.SQLException;

import beans.Gonglue;

public class GongLueDao {

	public Gonglue createGL(Gonglue gl) throws SQLException{
		SqlUtil util = new SqlUtil();
		return util.createGonglue(gl);
		
	}
}
