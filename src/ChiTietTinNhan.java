

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
 * Servlet implementation class ChiTietTinNhan
 */
@WebServlet("/ChiTietTinNhan")
public class ChiTietTinNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietTinNhan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int id = Integer.parseInt(request.getParameter("id"));
		
		ArrayList<TinNhan> TTBH = new ArrayList<>();
		TTBH = connectDB.NoiDungTinNhan(id);
		
		Gson gson = new Gson();
		response.setCharacterEncoding("UTF-8"); 
		JsonElement element = gson.toJsonTree(TTBH, new TypeToken<List<TinNhan>>() {}.getType());

		JsonArray jsonArray = element.getAsJsonArray();
	  
		  
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8"); 
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
