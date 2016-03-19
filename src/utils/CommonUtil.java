package utils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;













import dao.SqlUtil;
import beans.Gonglue;
import beans.HD;
import beans.Profile;

public class CommonUtil {
	public static boolean isBlank(String str){
		if(str==null || str.trim().length()==0){
			return true;
		}
		return false;
	}
	
	public static synchronized String generateId(String prefix){
		String id = prefix+UUID.randomUUID().toString();
		return id;
	}
	
	public Profile getProfileFromRequest(HttpServletRequest request){
		Profile p = null;
		HttpSession session  =  request.getSession();
		if(session!=null){
			p = (Profile) session.getAttribute("profile");
		}
		return p;
	}
	
	public HashMap<String,Gonglue> getGongluesFromApplication(ServletContext application){
		HashMap<String,Gonglue> gonglueMap= (HashMap<String, Gonglue>) application.getAttribute("gonglues");
		if(gonglueMap==null){
			try {
				SqlUtil untils = new SqlUtil();
				gonglueMap = new HashMap<String, Gonglue>();
				ArrayList<Gonglue> gonglues = untils.findALLGonglue();
				for(Gonglue gl : gonglues){
					gonglueMap.put(gl.getId(), gl);
				}
				application.setAttribute("gonglues", gonglueMap);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return gonglueMap;
	}
	
	public synchronized void addGonglue(Gonglue gl,ServletContext application){
		this.getGongluesFromApplication(application).put(gl.getId(), gl);
	}
	
	public HashMap<String,HD> getHDFromApplication(ServletContext application){
		HashMap<String,HD> hdMap= (HashMap<String, HD>) application.getAttribute("hds");
		if(hdMap==null){
			try {
				SqlUtil untils = new SqlUtil();
				hdMap = new HashMap<String, HD>();
				ArrayList<HD> hds = untils.findALLHD();
				for(HD hd : hds){
					hdMap.put(hd.getId(), hd);
				}
				application.setAttribute("hds", hdMap);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return hdMap;
	}
	
	public synchronized void addHD(HD hd,ServletContext application){
		this.getHDFromApplication(application).put(hd.getId(), hd);
	}
	
}
