package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.CommonUtil;
import dao.SqlUtil;
import beans.Profile;

public class ProfileUpdate extends HttpServlet {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest
	 * , javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Profile profile = (Profile) req.getSession().getAttribute("profile");
		
		Profile oldProfile = new Profile();
		oldProfile.setName(profile.getName());
		oldProfile.setPassword(profile.getPassword());
		oldProfile.setPhoneNum(profile.getPhoneNum());
		oldProfile.setSchool(profile.getSchool());
		
		String errorMsg = null;

		try {
			SqlUtil util = new SqlUtil();

			String name = req.getParameter("name");
			String phoneStr = req.getParameter("phoneNum");
			String school = req.getParameter("school");
			
			if (!CommonUtil.isBlank(phoneStr)) {
				long phoneNum = Long.parseLong(phoneStr);
				profile.setPhoneNum(phoneNum);
			}

			if (!CommonUtil.isBlank(name)) {
				profile.setName(name);
			}

			if (!CommonUtil.isBlank(school)) {
				profile.setSchool(school);
			}
			
			String isChangePassword = req.getParameter("checkbox");
			
			if("on".equals(isChangePassword)){
				String currentPass = req.getParameter("currentPass");
				String newP1 = req.getParameter("newPass1");
				String newP2 = req.getParameter("newPass2");
				if(CommonUtil.isBlank(currentPass) || CommonUtil.isBlank(newP1) || !newP1.equals(newP2)||!currentPass.equals(profile.getPassword()) ){
					errorMsg = "密码为空，或者不匹配";
				}else{
					profile.setPassword(newP1);
				}
			}

			util.updateProfile(profile,oldProfile.getPhoneNum());

		} catch (NumberFormatException e) {
			errorMsg = "电话不对";
		} catch (SQLException e) {
			errorMsg = "数据库出错了 ： " +e.getMessage();
			if("23000".equals(e.getSQLState())){
				errorMsg = "这个电话已经被注册过了 ";
			}
			e.printStackTrace();
		}

		if(!CommonUtil.isBlank(errorMsg)){
			req.getSession().setAttribute("profile", oldProfile);
		}
		
		req.setAttribute("errorMsg", errorMsg);
		req.getRequestDispatcher("/pages/myAccount/myAccount.jsp").forward(req, resp);

		// req.getSession().setAttribute("profile", profile);

	}

}
