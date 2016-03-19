package servlets;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import utils.CommonUtil;
import beans.Profile;
import beans.Share;
import dao.SqlUtil;

public class ShareUploadServlet extends ActivityServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String description = null;
		String date = null;
		String zhuti = null;
		String place = null;
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
					} else if ("date".equals(item.getFieldName())) {
						date = item.getString("UTF-8");
					} else if ("place".equals(item.getFieldName())) {
						place = item.getString("UTF-8");
					} else if ("zhuti".equals(item.getFieldName())) {
						zhuti = item.getString("UTF-8");
					}
				} else {
					if (item.getName() != null && !item.getName().equals("")) {
						System.out.println("文件大小" + item.getSize());
						System.out.println("文件类型�" + item.getContentType());
						System.out.println("文件名字" + item.getName());
						File tempFile = new File(item.getName());
						filePath = getSavePath() + File.separator + "share"
								+ File.separator + File.separator
								+ tempFile.getName();
						requestPath = "/share/" + "/" + tempFile.getName();
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

			if (util.isBlank(description) || util.isBlank(date)
					|| util.isBlank(place) || util.isBlank(zhuti)) {
				success = false;
				req.setAttribute("uploadMessage", "缺失字段");
			}
			if (success) {
				SqlUtil sqlUtil = new SqlUtil();
				Share share = new Share();
				share.setZhuti(zhuti);
				share.setDate(date);
				share.setPlace(place);
				share.setDescription(description);
				share.setDescription(description);
				share.setImage_path(requestPath);
				sqlUtil.createShare(share);
				util.addShare(share, this.getServletContext());
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
			req.getRequestDispatcher("/pages/createSharing.jsp").forward(req,
					resp);
		}
	}

}
