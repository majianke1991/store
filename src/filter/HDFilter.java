

package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import utils.CommonUtil;
import beans.HD;

public class HDFilter implements Filter {

	private ServletContext context = null;
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		CommonUtil util = new CommonUtil();
		HashMap<String, HD> activity = util.getHDFromApplication(getContext());
		String hid = arg0.getParameter("hid");
		if(hid!=null){
			arg0.setAttribute("hd",activity.get(hid));
		}else{
			arg0.setAttribute("hds", activity);
		}
		arg2.doFilter(arg0, arg1);
	}



	@Override
	public void init(FilterConfig arg0) throws ServletException {
		setContext(arg0.getServletContext());
	}
	
	public ServletContext getContext() {
		return context;
	}

	public void setContext(ServletContext context) {
		this.context = context;
	}

}
