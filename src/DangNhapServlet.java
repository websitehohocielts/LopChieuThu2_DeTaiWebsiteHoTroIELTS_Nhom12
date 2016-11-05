

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DangNhapServlet
 */
@WebServlet("/DangNhapServlet")
public class DangNhapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhapServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		
		if(connectDB.ConnDB(user, pass)){
			
			HttpSession userdn = request.getSession();
			userdn.setAttribute("username", user);
			userdn.setAttribute("hoten", connectDB.hoten(user));
			
			User uss = new User();
			uss = connectDB.ThongTin(user);
			
			userdn.setAttribute("username1", uss.getUsername());
			userdn.setAttribute("hoten1", uss.getHoten());
			userdn.setAttribute("sodienthoai", uss.getSodienthoai());
			userdn.setAttribute("email", uss.getEmail());

			String tb = "";
			userdn.setAttribute("Thongbao", tb);
			if(user.equals("admin")){
				RequestDispatcher rd = request.getRequestDispatcher("Trang Quan Ly Admin.jsp");
				rd.forward(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("222.jsp");
				rd.forward(request, response);
			}
		}
		else
		{
			
			HttpSession Loi = request.getSession();
			String tb = "Sai mật khẩu, đăng ký hoặc đăng nhập lại !";
			Loi.setAttribute("Thongbao", tb);
	RequestDispatcher rd = request.getRequestDispatcher("DangKy.jsp");
	rd.forward(request, response);
			
			
			
			
		}
	}

}
