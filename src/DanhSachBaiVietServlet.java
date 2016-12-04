

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
 * Servlet implementation class DanhSachBaiVietServlet
 */
@WebServlet("/DanhSachBaiVietServlet")
public class DanhSachBaiVietServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanhSachBaiVietServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int page = Integer.parseInt(request.getParameter("page"));
		
		ArrayList<BaiViet> listTN= new ArrayList<>();
		
		listTN = connectDB.DanhSachBaiViet(page);
		  
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(listTN, new TypeToken<List<BaiViet>>() {}.getType());
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
