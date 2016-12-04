

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

/**
 * Servlet implementation class LichSuTinNhanServlet
 */
@WebServlet("/LichSuTinNhanServlet")
public class LichSuTinNhanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuTinNhanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession();
		String user = (String) ss.getAttribute("username1");
		int page = Integer.parseInt(request.getParameter("page"));
		
		ArrayList<TinNhan> listTN= new ArrayList<>();
		
		listTN = connectDB.DanhSachTinNhan(page, user);
		  
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(listTN, new TypeToken<List<TinNhan>>() {}.getType());
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
