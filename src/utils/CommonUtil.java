package utils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;









import dao.SqlUtil;
import beans.Gonglue;
import beans.Profile;

public class CommonUtil {
	public static boolean isBlank(String str){
		if(str==null || str.trim().length()==0){
			return true;
		}
		return false;
	}
	
	public Profile getProfileFromRequest(HttpServletRequest request){
		Profile p = null;
		HttpSession session  =  request.getSession();
		if(session!=null){
			p = (Profile) session.getAttribute("profile");
		}
		return p;
	}
	
	public ArrayList<Gonglue> getGongluesFromApplication(ServletContext application){
		ArrayList<Gonglue> gonglues = (ArrayList<Gonglue>) application.getAttribute("gonglues");
		if(gonglues==null){
			try {
				SqlUtil untils = new SqlUtil();
				gonglues = untils.findALLGonglue();
				application.setAttribute("gonglues", gonglues);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return gonglues;
	}
	
	public synchronized void addGonglue(Gonglue gl,ServletContext application){
		this.getGongluesFromApplication(application).add(gl);
	}
	
}
