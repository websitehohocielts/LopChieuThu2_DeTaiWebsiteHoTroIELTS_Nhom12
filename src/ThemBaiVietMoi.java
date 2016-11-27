

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ThemBaiVietMoi
 */
@WebServlet("/ThemBaiVietMoi")
public class ThemBaiVietMoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemBaiVietMoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tieude = request.getParameter("tieude");
		String nd = request.getParameter("noidung");
		String cm = request.getParameter("chuyenmuc");
		int muc = Integer.parseInt(request.getParameter("muc"));
		
		if (connectDB.taoBaiVietMoi(tieude, nd, cm, muc) ){
			response.getWriter().write("themthanhcong");
		}
		else{
			response.getWriter().write("themthatbai");
		}
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
