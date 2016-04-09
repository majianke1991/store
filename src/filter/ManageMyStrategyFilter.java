package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dao.SqlUtil;
import utils.CommonUtil;
import beans.Gonglue;
import beans.Profile;

public class ManageMyStrategyFilter extends StrategyFilter{

	/* (non-Javadoc)
	 * @see filter.StrategyFilter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) arg0;
		
		Profile pf = (Profile) req.getSession().getAttribute("profile");
		
		List<Gonglue> gonglues = new ArrayList<Gonglue>();
		if(pf!=null){
			long phoneNum = pf.getPhoneNum();
			SqlUtil sql = new SqlUtil();
			gonglues = sql.getGonglueByUser(phoneNum);
		}
		
		arg0.setAttribute("gonglues", gonglues);
		arg2.doFilter(arg0, arg1);
	}
	
	
}
