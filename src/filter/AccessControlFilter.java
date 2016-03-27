package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Profile;

public class AccessControlFilter implements Filter {

	private String adminPhone;
	private int phone;

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		HttpSession session = request.getSession();
		Profile profile = (Profile) session.getAttribute("profile");
		
		if (profile == null || (profile.getPhoneNum() != phone)) {
			response.sendRedirect("/store/pages/index.jsp");
		}
		
		arg2.doFilter(req, resp);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		adminPhone = arg0.getInitParameter("adminPhone");
		phone = Integer.parseInt(adminPhone);
	}

}
