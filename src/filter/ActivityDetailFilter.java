package filter;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import beans.HD;
import beans.Share;
import utils.CommonUtil;
import dao.SqlUtil;

public class ActivityDetailFilter extends StrategyFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		String hId = req.getParameter("hId");
		String sid = req.getParameter("sid");
		if (!CommonUtil.isBlank(hId)) {
			CommonUtil util = new CommonUtil();
			HashMap<String, HD> map = util.getHDFromApplication(getContext());
			HD hd = map.get(hId);
			req.setAttribute("HD", hd);
		}
		if (!CommonUtil.isBlank(sid)) {
			CommonUtil util = new CommonUtil();
			HashMap<String, Share> map = util.getShareFromApplication(getContext());
			Share share = map.get(sid);
			req.setAttribute("share", share);
		}
		arg2.doFilter(req, arg1);
	}

}




