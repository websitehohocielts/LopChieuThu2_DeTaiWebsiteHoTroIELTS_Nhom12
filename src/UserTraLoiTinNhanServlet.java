

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserTraLoiTinNhanServlet
 */
@WebServlet("/UserTraLoiTinNhanServlet")
public class UserTraLoiTinNhanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserTraLoiTinNhanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idtn = Integer.parseInt(request.getParameter("idtn"));
		String nd = request.getParameter("noidungtl");
		
		HttpSession ss = request.getSession();
		String usergui = (String) ss.getAttribute("username1");
		if(connectDB.traLoiTinNhan(idtn, nd, usergui)){
			response.setContentType("text/plain");  
			  response.setCharacterEncoding("UTF-8"); 
			 
			  response.getWriter().write("guithanhcong");
		}
		else{
			response.setContentType("text/plain");  
			  response.setCharacterEncoding("UTF-8"); 
			 
			  response.getWriter().write("loi");
			
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
