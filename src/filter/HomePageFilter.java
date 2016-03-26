package filter;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import beans.Gonglue;
import beans.HD;
import beans.Share;
import utils.CommonUtil;

public class HomePageFilter extends StrategyFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		CommonUtil util = new CommonUtil();
		HashMap<String, HD> hds = util.getHDFromApplication(getContext());
		List<HD> hdlist = getHdList(hds);
		req.setAttribute("hdlist", hdlist);
		
		HashMap<String, Gonglue> gls = util.getGongluesFromApplication(getContext());
		List<Gonglue> gllist = getGLList(gls);
		req.setAttribute("gllist", gllist);
		
		HashMap<String, Share> shares = util.getShareFromApplication(getContext());
		List<Share> sharelist = getShareList(shares);
		req.setAttribute("sharelist", sharelist);
		
		chain.doFilter(req, resp);
	}
	
	
	private List<Share> getShareList(HashMap<String, Share> glmap){
		
		List<Share> sharelist = new ArrayList<Share>(glmap.values());
		Collections.sort(sharelist,new Comparator<Share>(){
			@Override
			public int compare(Share o1, Share o2) {
				// TODO Auto-generated method stub
				String date1 = o1.getCreation_date();
				String date2 = o2.getCreation_date();
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
				try {
					if (format.parse(date1).before(format.parse(date2))) {
						return 1;
					}
					return -1;
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			
		});
		if(sharelist.size()>4){
			sharelist = sharelist.subList(0,4);
		}
		return sharelist;
	}
	
	private List<Gonglue> getGLList(HashMap<String, Gonglue> glmap){

		List<Gonglue> gllist = new ArrayList<Gonglue>(glmap.values());
		Collections.sort(gllist,new Comparator<Gonglue>(){
			@Override
			public int compare(Gonglue o1, Gonglue o2) {
				// TODO Auto-generated method stub
				String date1 = o1.getDate();
				String date2 = o2.getDate();
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
				try {
					if (format.parse(date1).before(format.parse(date2))) {
						return 1;
					}
					return -1;
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			
		});
		if(gllist.size()>6){
			gllist = gllist.subList(0,6);
		}
		return gllist;
	}
	
	private List<HD> getHdList(HashMap<String, HD> hdmap){
		List<HD> hdlist = new ArrayList<HD>(hdmap.values());
		Collections.sort(hdlist,new Comparator<HD>(){
			@Override
			public int compare(HD o1, HD o2) {
				// TODO Auto-generated method stub
				String date1 = o1.getCreation_date();
				String date2 = o2.getCreation_date();
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
				try {
					if (format.parse(date1).before(format.parse(date2))) {
						return 1;
					}
					return -1;
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			
		});
		if(hdlist.size()>6){
			hdlist = hdlist.subList(0,6);
		}
		return hdlist;
	}
	/*ArrayList<Map.Entry<String, HD>> entry = (ArrayList<Map.Entry<String, HD>>) hds
				.entrySet();
		Collections.sort(entry, new Comparator<Entry<String, HD>>() {

			@Override
			public int compare(Entry<String, HD> o1, Entry<String, HD> o2) {
				try {
					HD hd1 = o1.getValue();
					HD hd2 = o1.getValue();
					String date1 = hd1.getCreation_date();
					String date2 = hd2.getCreation_date();
					SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
					if (format.parse(date1).after(format.parse(date2))) {
						return 1;
					}
					return -1;
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}

			}
		});*/

}
