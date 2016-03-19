package servlets;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import utils.CommonUtil;
import dao.GongLueDao;
import dao.HDDao;
import beans.Gonglue;
import beans.HD;
import beans.Profile;

public class ActivityServlet extends HttpServlet {

	private String savePath;

	@Override
	public void init() throws ServletException {
		String savePath = getInitParameter("uploadPath");
		setSavePath(savePath);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String description = null;
		String fromDate = null;
		String endDate = null;
		String zhuti = null;
		int estimate = 0;
		String filePath = null;
		String requestPath = null;

		CommonUtil util = new CommonUtil();
		boolean success = true;

		Profile profile = (Profile) req.getSession().getAttribute("profile");

		req.setCharacterEncoding("UTF-8");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List items = upload.parseRequest(req);
			Iterator itr = items.iterator();
			while (itr.hasNext()) {
				FileItem item = (FileItem) itr.next();
				if (item.isFormField()) {
					if ("description".equals(item.getFieldName())) {
						description = item.getString("UTF-8");
					} else if ("fromDate".equals(item.getFieldName())) {
						fromDate = item.getString("UTF-8");
					} else if ("endDate".equals(item.getFieldName())) {
						endDate = item.getString("UTF-8");
					} else if ("estimate".equals(item.getFieldName())) {
						estimate = Integer.parseInt(item.getString("UTF-8"));
					} else if ("zhuti".equals(item.getFieldName())) {
						zhuti = item.getString("UTF-8");
					}
				} else {
					if (item.getName() != null && !item.getName().equals("")) {
						System.out.println("文件大小" + item.getSize());
						System.out.println("文件类型�" + item.getContentType());
						System.out.println("文件名字" + item.getName());
						File tempFile = new File(item.getName());
						filePath = getSavePath() + File.separator + "HD"
								+ File.separator + File.separator
								+ tempFile.getName();
						requestPath = "/HD/" + "/" + tempFile.getName();
						File file = new File(filePath);
						File parent = file.getParentFile();
						if (!parent.exists()) {
							parent.mkdirs();
						}
						item.write(file);
						req.setAttribute("uploadMessage", "文件上传成功");
					} else {
						success = false;
						req.setAttribute("uploadMessage", "上传失败");
					}
				}
			}

			if (util.isBlank(description) || util.isBlank(fromDate)
					|| util.isBlank(endDate) || util.isBlank(zhuti)) {
				success = false;
				req.setAttribute("uploadMessage", "缺失字段");
			}
			if (success) {
				HDDao dao = new HDDao();
				HD hd = new HD();
				hd.setZhuti(zhuti);
				hd.setFrom_date(fromDate);
				hd.setEsltimate(estimate);
				hd.setEnd_date(endDate);
				hd.setDescription(description);
				hd.setDescription(description);
				hd.setImage_path(requestPath);
				hd = dao.createHD(hd);
				util.addHD(hd, this.getServletContext());
			}

		} catch (NumberFormatException e1) {
			success = false;
			req.setAttribute("uploadMessage", "请输入正确的金额");
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
			req.setAttribute("uploadMessage", "上传失败");
		}

		if (success) {
			req.getRequestDispatcher("/pages/uploadResult.jsp").forward(req,
					resp);

		} else {
			req.getRequestDispatcher("/pages/createActivity.jsp").forward(req,
					resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}

	/**
	 * @return the savePath
	 */
	public String getSavePath() {
		return savePath;
	}

	/**
	 * @param savePath
	 *            the savePath to set
	 */
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

}
