

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
 * Servlet implementation class NoiDungCuocTroTruyen
 */
@WebServlet("/NoiDungCuocTroTruyen")
public class NoiDungCuocTroTruyen extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoiDungCuocTroTruyen() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String chuyenmuc = request.getParameter("chuyenmuc");
		int muc = Integer.parseInt(request.getParameter("muc"));
		//int page = Integer.parseInt("page");
		 * 
		 
*/		
		int idtn = Integer.parseInt(request.getParameter("idtn"));
		ArrayList<NoiDungTraLoi> listTL = new ArrayList<>();
		
		listTL= connectDB.NoiDungCuocTroTruyen(idtn);
		  
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(listTL, new TypeToken<List<NoiDungTraLoi>>() {}.getType());
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
