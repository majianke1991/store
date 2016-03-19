package servlets;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.GongLueDao;
import beans.Gonglue;
import beans.Profile;
import utils.CommonUtil;

public class UploadServlet extends HttpServlet {

	private static final long serialVersionUID = -7744625344830285257L;
	private String savePath;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	public void init() throws ServletException {
		String savePath = getInitParameter("uploadPath");
		setSavePath(savePath);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean succeuss = true;
		String filePath = null;
		String requestPath = null;
		String title = null;
		String text = null;
		CommonUtil util = new CommonUtil();
		Profile profile = util.getProfileFromRequest(request);
		if (profile == null) {
			succeuss = false;
			request.setAttribute("uploadMessage", "上传失败，登陆之后才能上传");
		} else {

			request.setCharacterEncoding("UTF-8");
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List items = upload.parseRequest(request);
				Iterator itr = items.iterator();
				while (itr.hasNext()) {
					FileItem item = (FileItem) itr.next();
					if (item.isFormField()) {
						if ("title".equals(item.getFieldName())) {
							title = item.getString("UTF-8");
						} else if ("text".equals(item.getFieldName())) {
							text = item.getString("UTF-8");
						}
					} else {
						if (item.getName() != null
								&& !item.getName().equals("")) {
							System.out.println("文件大小" + item.getSize());
							System.out.println("文件类型�" + item.getContentType());
							System.out.println("文件名字" + item.getName());
							File tempFile = new File(item.getName());
							filePath = getSavePath() + File.separator+"customerData"+ File.separator+ profile.getPhoneNum()
									+ File.separator + tempFile.getName();
							requestPath = "/customerData/"
									+ profile.getPhoneNum() + "/"
									+ tempFile.getName();
							File file = new File(filePath);
							File parent = file.getParentFile();
							if (!parent.exists()) {
								parent.mkdirs();
							}
							item.write(file);
							request.setAttribute("uploadMessage", "文件上传成功");
						} else {
							succeuss = false;
							request.setAttribute("uploadMessage", "上传失败");
						}
					}
				}

				if (util.isBlank(text) || util.isBlank(title)) {
					succeuss = false;
					request.setAttribute("uploadMessage", "请输入标题/正文");
				}
				if (succeuss) {
					GongLueDao dao = new GongLueDao();
					Gonglue gl = new Gonglue();
					gl.setPhoneNum(profile.getPhoneNum());
					gl.setText(text);
					gl.setTitle(title);
					gl.setImage_path(requestPath);
					gl.setAuthor(profile.getName());
					gl = dao.createGL(gl);
					util.addGonglue(gl, this.getServletContext());
				}

			} catch (Exception e) {
				e.printStackTrace();
				succeuss = false;
				request.setAttribute("uploadMessage", "上传失败");
			}
		}
		if (succeuss) {
			request.getRequestDispatcher("/pages/uploadResult.jsp").forward(
					request, response);
		} else {
			request.getRequestDispatcher("/pages/writeStrategy.jsp").forward(
					request, response);
		}
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
}
