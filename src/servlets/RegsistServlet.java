package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProfileDao;
import beans.Profile;
import utils.CommonUtil;

public class RegsistServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String phoneStr = req.getParameter("phone");
		String name = req.getParameter("name");
		String school = req.getParameter("school");
		String password = req.getParameter("password");
		String cpassword = req.getParameter("cpassword");
		if (CommonUtil.isBlank(phoneStr)) {
			forwardWithErrorMSG(req, resp, "phone");
			return;
		}
		if (CommonUtil.isBlank(name)) {
			forwardWithErrorMSG(req, resp, "name");
			return;
		}
		if (CommonUtil.isBlank(school)) {
			forwardWithErrorMSG(req, resp, "school");
			return;

		}
		if (CommonUtil.isBlank(password)) {
			forwardWithErrorMSG(req, resp, "password");
			return;
		}
		if (CommonUtil.isBlank(cpassword)) {
			forwardWithErrorMSG(req, resp, "cpassword");
			return;
		}
		if (!password.equals(cpassword)) {
			forwardWithErrorMSG(req, resp, "passwordNotMatch");
			return;
		}
		try {

			long phoneNum = Long.parseLong(phoneStr);
			Profile profile = new Profile();
			profile.setPhoneNum(phoneNum);
			profile.setName(name);
			profile.setPassword(cpassword);
			profile.setSchool(school);
			ProfileDao profileDao  = new ProfileDao();
			profileDao.createProfile(profile);
			
			req.getSession().setAttribute("profile", profile);
			resp.sendRedirect("pages/index.jsp");
		} catch (NumberFormatException e) {
			forwardWithErrorMSG(req, resp, "phoneNotNum");
			return;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			if("23000".equals(e.getSQLState())){
				forwardWithErrorMSG(req, resp, "phoneNumExisted");
				return;
			}
			e.printStackTrace();
		}

	}

	private void forwardWithErrorMSG(HttpServletRequest req,
			HttpServletResponse resp, String msg) throws ServletException,
			IOException {
		req.setAttribute("ErrorMsg", msg);
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("/pages/regist.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
