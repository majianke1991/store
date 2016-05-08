package filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import utils.CommonUtil;
import beans.Share;

public class SharingDetailFilter extends StrategyFilter{

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		CommonUtil util = new CommonUtil();
		String sid = arg0.getParameter("sid");
		Share share = util.getShareByIdFromApplication(sid);
		arg0.setAttribute("share", share);
		arg2.doFilter(arg0, arg1);
	}
}
