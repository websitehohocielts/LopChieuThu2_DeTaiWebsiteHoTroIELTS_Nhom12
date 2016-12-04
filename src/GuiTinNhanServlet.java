
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GuiTinNhanServlet
 */
@WebServlet("/GuiTinNhanServlet")
public class GuiTinNhanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GuiTinNhanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tieude = request.getParameter("tieude");
		String noidung = request.getParameter("noidung");
		HttpSession ss = request.getSession();
		String usernhan = request.getParameter("usernhan");
		String usergui = (String) ss.getAttribute("username1");
		if (usernhan == "") {
			try{
				ArrayList<String> ds = connectDB.dsAdmin();
			int iz = ds.size();
			for (int i = 0; i < ds.size(); i++) {
				connectDB.guiTinNhan(tieude, noidung, ds.get(i), usergui);
			}
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");

			response.getWriter().write("guitinthanhcong");
			}
			catch(Exception e){
				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
			
				response.getWriter().write("guitinthatbai");
			}
		
		} else {
			if (connectDB.guiTinNhan(tieude, noidung, usernhan, usergui)) {
				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
			
				response.getWriter().write("guitinthanhcong");
			}
			else{
				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
			
				response.getWriter().write("guitinthatbai");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
