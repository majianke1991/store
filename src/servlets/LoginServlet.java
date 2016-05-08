package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.awt.RepaintArea;
import beans.Profile;
import dao.ProfileDao;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String phoneStr = req.getParameter("phoneNum");
		String password = req.getParameter("password");
		System.out.println(password);
		try{
			long phoneNum = Long.parseLong(phoneStr);
			ProfileDao dao = new ProfileDao();
			Profile profile = dao.findProfile(phoneNum,password);
			if(profile!=null){
				if(!profile.getPassword().equals(password)){
					req.setAttribute("errorMsg", "passwordNotRight");
				}else{
					req.getSession().setAttribute("profile", profile);
					resp.sendRedirect("pages/index.jsp");
					return;
				}
			}else{
				req.setAttribute("errorMsg", "UserNotFind");
			}

		req.getRequestDispatcher("pages/login.jsp").forward(req, resp);
		}catch(NumberFormatException e){
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
   
}
