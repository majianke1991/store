package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.HD;
import beans.Share;
import dao.SqlUtil;

public class DeleteHDorShare extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String hid = req.getParameter("hid");
		String sid = req.getParameter("sid");
		PrintWriter writer = resp.getWriter();
		SqlUtil sql = new SqlUtil();
		if(hid!=null){
			sql.delHDById(hid);
			HashMap<String,HD> hdMap= (HashMap<String, HD>) this.getServletContext().getAttribute("hds");
			hdMap.remove(hid);
			writer.print("true");
		}
		
		if(sid!=null){
			sql.delShareById(sid);
			HashMap<String,Share> shareMap= (HashMap<String, Share>) this.getServletContext().getAttribute("shares");
			shareMap.remove(sid);
			writer.print("true");
		}
		
		writer.flush();
		writer.close();
	}

	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}

}
