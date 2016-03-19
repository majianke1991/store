package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import utils.CommonUtil;
import beans.Gonglue;
import beans.HD;
import beans.Profile;

public class SqlUtil {

	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:orcl", "hehe", "hehe");
	}
	public HD createHD(HD hd) throws SQLException {
		Connection conn = getConnection();
		String sql = "insert into HD values (?,?,?,?,?,?,?,?)";
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat datef = new SimpleDateFormat("MM/dd/yyyy");
		String date = datef.format(cal.getTime());
		String id = CommonUtil.generateId("hd");
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, id);
		statement.setString(2, hd.getZhuti());
		statement.setInt(3, hd.getEsltimate());
		statement.setString(4, hd.getFrom_date());
		statement.setString(5, hd.getEnd_date());
		statement.setString(6, hd.getImage_path());
		statement.setString(7, hd.getDescription());
		statement.setString(8, date);
		statement.executeUpdate();
		
		hd.setCreation_date(date);
		hd.setId(id);
		return hd;
	}
	
	public void createUser(Profile profile) throws SQLException {
		Connection conn = getConnection();
		String sql = "insert into profile values (?,?,?,?)";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setInt(1, profile.getPhoneNum());
		statement.setString(2, profile.getName());
		statement.setString(3, profile.getPassword());
		statement.setString(4, profile.getSchool());
		statement.executeUpdate();
	}

	public Profile findUser(int phoneNum) throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from profile where phoneNum = ?";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setInt(1, phoneNum);
		ResultSet rs = statement.executeQuery();
		Profile profile = null;
		if (rs.next()) {
			int rowNum = rs.getRow();
			profile = new Profile();
			profile.setPhoneNum(rs.getInt("phoneNum"));
			profile.setName(rs.getString("name"));
			profile.setPassword(rs.getString("password"));
			profile.setSchool(rs.getString("school"));
		}
		return profile;
	}

	public Gonglue createGonglue(Gonglue gl) throws SQLException {
		Connection conn = getConnection();
		String sql = "insert into gonglue values (?,?,?,?,?,?,?)";
		PreparedStatement statement = conn.prepareStatement(sql);
		
		Calendar cal = Calendar.getInstance();
		
		SimpleDateFormat datef = new SimpleDateFormat("MM/dd/yyyy");
		String date = datef.format(cal.getTime());
		String id = CommonUtil.generateId("gl");
		gl.setDate(date);
		gl.setId(id);
		statement.setInt(1, gl.getPhoneNum());
		statement.setString(2, gl.getTitle());
		statement.setString(3, gl.getText());
		statement.setString(4, gl.getImage_path());
		statement.setString(5, id);
		statement.setString(6, date);
		statement.setString(7, gl.getAuthor());
		statement.executeUpdate();
		
		return gl;
	}

	public ArrayList<Gonglue> findALLGonglue() throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from gonglue";
		PreparedStatement statement = conn.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		ArrayList<Gonglue> gonglues = new ArrayList<Gonglue>();
		while (rs.next()) {
		
			int rowNum = rs.getRow();
			Gonglue gonglue = new Gonglue();
			gonglue.setPhoneNum(rs.getInt("phoneNum"));
			gonglue.setTitle(rs.getString("title"));
			gonglue.setText(rs.getString("text"));
			gonglue.setImage_path(rs.getString("image_path"));
			gonglue.setId(rs.getString("id"));
			gonglue.setAuthor(rs.getString("author_name"));
			gonglue.setDate("create_data");
			gonglues.add(gonglue);
		}
		return gonglues;
	}
	
	public ArrayList<HD> findALLHD() throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from HD";
		PreparedStatement statement = conn.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		ArrayList<HD> hds = new ArrayList<HD>();
		while (rs.next()) {

			int rowNum = rs.getRow();
			HD hd = new HD();
			hd.setCreation_date(rs.getString("create_data"));
			hd.setDescription(rs.getString("description"));
			hd.setEnd_date(rs.getString("end_date"));
			hd.setEsltimate(rs.getInt("esltimate"));
			hd.setFrom_date(rs.getString("from_date"));
			hd.setId(rs.getString("id"));
			hd.setImage_path(rs.getString("image_path"));
			hd.setZhuti(rs.getString("zhuti"));
			hds.add(hd);
		}
		return hds;
	}
}
