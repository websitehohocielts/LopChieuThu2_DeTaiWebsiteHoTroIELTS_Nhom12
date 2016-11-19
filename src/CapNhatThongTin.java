

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class CapNhatThongTin
 */
@WebServlet("/CapNhatThongTin")
public class CapNhatThongTin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CapNhatThongTin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String mail = request.getParameter("em");
		int sdt = Integer.parseInt(request.getParameter("sdt"));
		String hoten = request.getParameter("ht");
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Connection cnn = null;
			Statement stm = null;	
			try {
				cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				stm = (Statement) cnn.createStatement();
				stm.executeUpdate("update ieltsonline.user set hoten = '"+hoten+"',email='"+mail+"',sodienthoai='"+sdt+"' where username = '"+user+"'");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 HttpSession userdn = request.getSession();
				
				userdn.setAttribute("hoten1", hoten);
				userdn.setAttribute("sodienthoai", sdt);
				userdn.setAttribute("email", mail);
			response.setContentType("text/plain");  
			  response.setCharacterEncoding("UTF-8"); 
			//response.getWriter().write("Cập nhật thông tin thành công !"); 
			  response.getWriter().write("capnhatttthanhcong");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
