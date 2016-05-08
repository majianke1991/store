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
import java.util.List;

import utils.CommonUtil;
import beans.Gonglue;
import beans.HD;
import beans.Profile;
import beans.Share;

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

	public void delHDById(String id) {
		Connection conn;
		try {
			conn = getConnection();
			String sql = "delete from HD where id =? ";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, id);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void delShareById(String id) {
		Connection conn;
		try {
			conn = getConnection();
			String sql = "delete from sharing where id =? ";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, id);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void delGonglueById(String id) {
		Connection conn;
		try {
			conn = getConnection();
			String sql = "delete from gonglue where id =? ";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, id);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//根据gonglueid查询
	public Gonglue getGonglueById(String id) throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from gonglue where ID = ?";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, id);
		ResultSet rs = statement.executeQuery();
		Gonglue gonglue =new Gonglue();
		while (rs.next()) {
			int rowNum = rs.getRow();
			gonglue.setPhoneNum(rs.getLong("phoneNum"));
			gonglue.setTitle(rs.getString("title"));
			gonglue.setText(rs.getString("text"));
			gonglue.setImage_path(rs.getString("image_path"));
			gonglue.setId(rs.getString("id"));
			gonglue.setAuthor(rs.getString("author_name"));
			gonglue.setDate(rs.getString("create_data"));
		}
		return gonglue;
	}
	
	public ArrayList<Share> findALLShare() throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from sharing";
		PreparedStatement statement = conn.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		ArrayList<Share> shs = new ArrayList<Share>();
		while (rs.next()) {

			int rowNum = rs.getRow();
			Share sh = new Share();
			sh.setDescription(rs.getString("description"));
			sh.setDate(rs.getString("begin_date"));
			sh.setId(rs.getString("id"));
			sh.setImage_path(rs.getString("image_path"));
			sh.setZhuti(rs.getString("zhuti"));
			sh.setPlace(rs.getString("place"));
			sh.setCreation_date(rs.getString("creation_date"));
			shs.add(sh);
		}
		return shs;
	}
	
	public Share findShareById(String id) throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from sharing where ID =";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, id);
		ResultSet rs = statement.executeQuery();
		Share sh = new Share();
		while (rs.next()) {

			int rowNum = rs.getRow();
			sh.setDescription(rs.getString("description"));
			sh.setDate(rs.getString("begin_date"));
			sh.setId(rs.getString("id"));
			sh.setImage_path(rs.getString("image_path"));
			sh.setZhuti(rs.getString("zhuti"));
			sh.setPlace(rs.getString("place"));
			sh.setCreation_date(rs.getString("creation_date"));
		}
		return sh;
	}
	
	
	public List<Gonglue> getGonglueByUser(long phoneNum) {

		Connection conn;
		ArrayList<Gonglue> gonglues = new ArrayList<Gonglue>();
		try {
			conn = getConnection();
			String sql = "select * from gonglue where phoneNum =? ";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setLong(1, phoneNum);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int rowNum = rs.getRow();
				Gonglue gonglue = new Gonglue();
				gonglue.setPhoneNum(rs.getLong("phoneNum"));
				gonglue.setTitle(rs.getString("title"));
				gonglue.setText(rs.getString("text"));
				gonglue.setImage_path(rs.getString("image_path"));
				gonglue.setId(rs.getString("id"));
				gonglue.setAuthor(rs.getString("author_name"));
				gonglue.setDate(rs.getString("create_data"));
				gonglues.add(gonglue);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gonglues;
	}

	public void updateProfile(Profile profile, long phoneNum)
			throws SQLException {

		Connection conn = getConnection();
		String sql = "update profile set phoneNum =?,name=?,password=?,school=? where phoneNum = ? ";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setLong(1, profile.getPhoneNum());
		statement.setString(2, profile.getName());
		statement.setString(3, profile.getPassword());
		statement.setString(4, profile.getSchool());
		statement.setLong(5, phoneNum);
		statement.executeUpdate();
	}

	public Share createShare(Share share) throws SQLException {
		Connection conn = getConnection();
		String sql = "insert into sharing values (?,?,?,?,?,?,?)";
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat datef = new SimpleDateFormat("MM/dd/yyyy");
		String date = datef.format(cal.getTime());
		String id = CommonUtil.generateId("sh");
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, id);
		statement.setString(2, share.getZhuti());
		statement.setString(3, share.getPlace());
		statement.setString(4, share.getDate());
		statement.setString(5, share.getImage_path());
		statement.setString(6, share.getDescription());
		statement.setString(7, date);
		statement.executeUpdate();
		share.setId(id);
		share.setCreation_date(date);
		return share;
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
		statement.setLong(1, profile.getPhoneNum());
		statement.setString(2, profile.getName());
		statement.setString(3, profile.getPassword());
		statement.setString(4, profile.getSchool());
		statement.executeUpdate();
	}

	public Profile findUser(Long phoneNum, String password) throws SQLException {
		Connection conn = getConnection();
		String sql = "select * from profile where phoneNum = ? AND password=?";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setLong(1, phoneNum);
		statement.setString(2, password);
		ResultSet rs = statement.executeQuery();
		Profile profile = null;
		if (rs.next()) {
			int rowNum = rs.getRow();
			profile = new Profile();
			profile.setPhoneNum(rs.getLong("phoneNum"));
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
		statement.setLong(1, gl.getPhoneNum());
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
			gonglue.setPhoneNum(rs.getLong("phoneNum"));
			gonglue.setTitle(rs.getString("title"));
			gonglue.setText(rs.getString("text"));
			gonglue.setImage_path(rs.getString("image_path"));
			gonglue.setId(rs.getString("id"));
			gonglue.setAuthor(rs.getString("author_name"));
			gonglue.setDate(rs.getString("create_data"));
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
