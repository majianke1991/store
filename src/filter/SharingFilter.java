package filter;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import utils.CommonUtil;
import beans.Share;


public class SharingFilter extends StrategyFilter{

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		CommonUtil util = new CommonUtil();
		HashMap<String, Share> shares = util.getShareFromApplication(getContext());
		arg0.setAttribute("shares", shares);
		arg2.doFilter(arg0, arg1);
	}
}
