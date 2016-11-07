

import java.io.IOException;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class DangKy
 */
@WebServlet("/DangKy")
public class DangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String mail = request.getParameter("em");
		String sdt = request.getParameter("sdt");
		String hoten = request.getParameter("ht");
		
		if (ConnDB(user)) {
			response.setContentType("text/plain");  
			  response.setCharacterEncoding("UTF-8"); 
			 response.getWriter().write("Lỗi ! Đã có user name này trong CSDL");
		} else {
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
				stm.executeUpdate("insert into ieltsonline.user values ('"+user+"','"+pass+"','"+hoten+"','"+mail+"','2',1,'"+Tss()+"','"+sdt+"')");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.setContentType("text/plain");  
			  response.setCharacterEncoding("UTF-8"); 
			response.getWriter().write("Đăng ký thành công ! Mời bạn đăng nhập"); 
		}
	}
	public static boolean ConnDB(String user)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		Connection cnn = null;
		Statement stm = null;
		ResultSet rs = null;	
		boolean tmp = false;
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
			stm = (Statement) cnn.createStatement();
			rs = stm.executeQuery("select * from ieltsonline.user where username = '"+user+"'");
			tmp = rs.next();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return tmp;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
public static String Tss(){
		
		Date thoiGian=new Date(System.currentTimeMillis());
		SimpleDateFormat dinhDangThoiGian = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dinhDangThoiGian.format(thoiGian.getTime());

	}

}
