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
import beans.Share;

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
	
	public Gonglue getGongluesByIdFromApplication(String id){
		Gonglue gonglue = new Gonglue();
		try {
			SqlUtil untils = new SqlUtil();
			gonglue = untils.getGonglueById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return gonglue;
	}
	
	
	public Share getShareByIdFromApplication(String id){
		Share share = new Share();
		try {
			SqlUtil untils = new SqlUtil();
			share = untils.findShareById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return share;
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
	
	public HD getActivityByIdFromApplication(String id){
		HD activity = new HD();
		try {
			SqlUtil untils = new SqlUtil();
			activity = untils.findHDById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return activity;
	}
	
	
	public synchronized void addHD(HD hd,ServletContext application){
		this.getHDFromApplication(application).put(hd.getId(), hd);
	}
	
	public HashMap<String,Share> getShareFromApplication(ServletContext application){
		HashMap<String,Share> shareMap= (HashMap<String, Share>) application.getAttribute("shares");
		if(shareMap==null){
			try {
				SqlUtil untils = new SqlUtil();
				shareMap = new HashMap<String, Share>();
				ArrayList<Share> shares = untils.findALLShare();
				for(Share sh : shares){
					shareMap.put(sh.getId(), sh);
				}
				application.setAttribute("shares", shareMap);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return shareMap;
	}
	
	public synchronized void addShare(Share sh,ServletContext application){
		this.getShareFromApplication(application).put(sh.getId(), sh);
	}
}
