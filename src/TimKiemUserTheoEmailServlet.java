

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

/**
 * Servlet implementation class TimKiemUserTheoEmailServlet
 */
@WebServlet("/TimKiemUserTheoEmailServlet")
public class TimKiemUserTheoEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimKiemUserTheoEmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		String us = request.getParameter("em");
		
		 ArrayList<UserClass> ListUser=new ArrayList<UserClass>();
		  
		  ListUser= connectDB.TimUserTheoEmail(page, us);
		  
			Gson gson = new Gson();
			JsonElement element = gson.toJsonTree(ListUser, new TypeToken<List<UserClass>>() {}.getType());
			
			JsonArray jsonArray = element.getAsJsonArray();
			response.setCharacterEncoding("UTF-8"); 
			response.setContentType("application/json");
			response.getWriter().print(jsonArray);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
