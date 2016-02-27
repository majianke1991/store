package servlets;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadServlet extends HttpServlet {

	private static final long	serialVersionUID	= -7744625344830285257L;
	private String				savePath;



	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}



	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List items = upload.parseRequest(request);
			Iterator itr = items.iterator();
			while (itr.hasNext()) {
				FileItem item = (FileItem) itr.next();
				if (item.isFormField()) {
					System.out.println("琛ㄥ崟鍙傛暟鍚�" + item.getFieldName() + "锛岃〃鍗曞弬鏁板�:" + item.getString("UTF-8"));
				} else {
					if (item.getName() != null && !item.getName().equals("")) {
						System.out.println("涓婁紶鏂囦欢鐨勫ぇ灏�" + item.getSize());
						System.out.println("涓婁紶鏂囦欢鐨勭被鍨�" + item.getContentType());
						// item.getName()杩斿洖涓婁紶鏂囦欢鍦ㄥ鎴风鐨勫畬鏁磋矾寰勫悕绉�
						System.out.println("涓婁紶鏂囦欢鐨勫悕绉�" + item.getName());
						File tempFile = new File(item.getName());
						// 涓婁紶鏂囦欢鐨勪繚瀛樿矾寰�
						File file = new File("D:\\tomcat\\apache-tomcat-6.0.39\\webapps\\store\\img",
								tempFile.getName());
						item.write(file);
						request.setAttribute("upload.message",   "涓婁紶鏂囦欢鎴愬姛锛�");
					} else {
						request.setAttribute("upload.message", "娌℃湁閫夋嫨涓婁紶鏂囦欢锛�");
					}
				} 
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("upload.message", "涓婁紶鏂囦欢澶辫触锛�");
		} 
		request.getRequestDispatcher("/pages/uploadResult.jsp").forward(request, response);
	}
}
