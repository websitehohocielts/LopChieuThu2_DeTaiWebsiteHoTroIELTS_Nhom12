

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
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class UpTaiLieu
 */
@WebServlet("/UpTaiLieu")
public class UpTaiLieu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpTaiLieu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession userdn = request.getSession();
		String userup = (String) userdn.getAttribute("username1");
		
		String link = request.getParameter("link");
		String tieude = request.getParameter("tieude");
		String mota = request.getParameter("mota");
		
		if(link.contains("youtube.com")){

			link = "https://www.youtube.com/embed/"+link.substring(32);
		}
		if(link.contains("docs.google.com") || link.contains("drive.google.com")){

			if(link.substring(link.length() -4 , link.length()).equals("view")){
				link = link.substring(0, link.length()- 4) + "preview";
			}
			else{
				if(link.substring(link.length() - 4, link.length()).equals("edit")){
					link = link.substring(0, link.length()- 4) + "preview";
				}
				
			}
		}
		
		if(AdminThemTaiLieu(userup,link,tieude,mota)){
			response.getWriter().write("uploadfile");
		}
		else{
			response.getWriter().write("thatbai");
		}
	}
	public static String layngay() {

		Date thoiGian = new Date(System.currentTimeMillis());
		SimpleDateFormat dinhDangThoiGian = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dinhDangThoiGian.format(thoiGian.getTime());

	}
	public static boolean AdminThemTaiLieu(String userup,String link,String tieude,String mota)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		Connection cnn = null;
		Statement stm = null;
		
		try {
			
			
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
			Statement stm1 = (Statement) cnn.createStatement();
			ResultSet rss = stm1.executeQuery("SELECT MAX(id) max FROM ieltsonline.tailieu");
			int id = -1;;
			while(rss.next()){
				id = rss.getInt("max");
			}
			id = id + 1;
			
			stm = (Statement) cnn.createStatement();
			stm.execute("insert into ieltsonline.tailieu values ("+id+",'"+tieude+"','"+layngay()+"','"+link+"','"+userup+"',null,1,'"+mota+"')");
			return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		try {
			stm.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			cnn.close();
		} catch (SQLException e) {
			return false;
		}
		return false;
		
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
