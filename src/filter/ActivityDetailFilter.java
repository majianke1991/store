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
import utils.CommonUtil;
import dao.SqlUtil;

public class ActivityDetailFilter extends StrategyFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		String id = req.getParameter("hId");
		if (!CommonUtil.isBlank(id)) {
			CommonUtil util = new CommonUtil();
			HashMap<String, HD> map = util.getHDFromApplication(getContext());
			HD hd = map.get(id);
			req.setAttribute("HD", hd);
		}
		arg2.doFilter(req, arg1);
	}

}
