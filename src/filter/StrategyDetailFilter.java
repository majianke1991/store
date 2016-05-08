package filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import utils.CommonUtil;
import beans.Gonglue;


public class StrategyDetailFilter extends StrategyFilter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		CommonUtil util = new CommonUtil();
		String glid = arg0.getParameter("glid");
		Gonglue gonglue = util.getGongluesByIdFromApplication(glid);
		arg0.setAttribute("gonglue", gonglue);
		arg2.doFilter(arg0, arg1);
	}
}
