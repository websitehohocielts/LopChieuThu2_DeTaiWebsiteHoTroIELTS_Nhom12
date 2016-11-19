

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
			userdn.setAttribute("role", uss.getRole());
			userdn.setAttribute("trangthai", uss.isTrangthai());
			String role = (String) userdn.getAttribute("role");
			boolean tt = (boolean) userdn.getAttribute("trangthai");
			if(role.equals("1")){
				RequestDispatcher rd = request.getRequestDispatcher("Trang Quan Ly Admin.jsp");
				rd.forward(request, response);
			}
			else{
				if(tt == true)
				{
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				}
				else
				{
					RequestDispatcher rd = request.getRequestDispatcher("DangNhapTaiKhoanBiKhoa.jsp");
					rd.forward(request, response);
				}
			}
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("DangNhapThatBai.jsp");
			rd.forward(request, response);
		}
	}

}
