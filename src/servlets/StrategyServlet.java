package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Gonglue;
import utils.CommonUtil;

public class StrategyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CommonUtil util = new CommonUtil();
		HashMap<String, Gonglue> gonglues = util.getGongluesFromApplication(this
				.getServletContext());
		req.setAttribute("gonglues", gonglues);
		req.getRequestDispatcher("/pages/strategy.jsp").forward(req, resp);
	}

}
