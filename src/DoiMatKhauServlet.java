

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoiMatKhauServlet
 */
@WebServlet("/DoiMatKhauServlet")
public class DoiMatKhauServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoiMatKhauServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession();
		String user = (String) ss.getAttribute("username1");
	 	
		String pass = request.getParameter("password");
		String pascu = request.getParameter("pascu");
		System.out.println(user +"   "+pass);
		if(connectDB.ConnDB(user, pascu) == false){
				response.setContentType("text/plain");  
			  response.setCharacterEncoding("UTF-8"); 
			  response.getWriter().write("matkhaucukhongtrung");
		}
		else{
			
			if(connectDB.DoiMatKhau(user, pass)){
				response.setContentType("text/plain");  
				  response.setCharacterEncoding("UTF-8"); 
				  response.getWriter().write("doimatkhauthanhcong");
			}
			else{
				response.setContentType("text/plain");  
				  response.setCharacterEncoding("UTF-8"); 
				  response.getWriter().write("doimatkhauthatbai");
			}
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
