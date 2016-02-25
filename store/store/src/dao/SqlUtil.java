package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Profile;

public class SqlUtil {
	
	public static Connection getConnection() throws SQLException{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hehe", "hehe");
	}
	
	public void createUser(Profile profile) throws SQLException{
		Connection conn  = getConnection();
		String sql = "insert into profile values (?,?,?,?)";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setInt(1, profile.getPhoneNum());
		statement.setString(2, profile.getName());
		statement.setString(3, profile.getPassword());
		statement.setString(4, profile.getSchool()); 
		statement.executeUpdate();
	}
	
	public Profile findUser(int phoneNum) throws SQLException{
		Connection conn =getConnection();
		String sql = "select * from profile where phoneNum = ?";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setInt(1, phoneNum);
		ResultSet rs = statement.executeQuery();
		Profile profile = null;
		if(rs.next()){
			int rowNum = rs.getRow();
			profile = new Profile();
			profile.setPhoneNum(rs.getInt("phoneNum"));
			profile.setName(rs.getString("name"));
			profile.setPassword(rs.getString("password"));
			profile.setSchool(rs.getString("school"));
		}
		return profile ;
	}
}
