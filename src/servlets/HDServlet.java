package servlets;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.HD;
import utils.CommonUtil;


public class HDServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CommonUtil util = new CommonUtil();
		HashMap<String, HD> activity = util.getHDFromApplication(this
				.getServletContext());
		req.setAttribute("hds", activity);
		System.out.println(activity.size()+".....................29");
		req.getRequestDispatcher("/pages/activity.jsp").forward(req, resp);
	}

}
