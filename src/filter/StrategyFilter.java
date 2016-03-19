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
import beans.Gonglue;

public class StrategyFilter implements Filter {

	private ServletContext context = null;
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		CommonUtil util = new CommonUtil();
		HashMap<String, Gonglue> gonglues = util.getGongluesFromApplication(getContext());
		String glid = arg0.getParameter("glid");
		if(glid!=null){
			arg0.setAttribute("gonglue",gonglues.get(glid));
		}else{
			arg0.setAttribute("gonglues", gonglues);
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
