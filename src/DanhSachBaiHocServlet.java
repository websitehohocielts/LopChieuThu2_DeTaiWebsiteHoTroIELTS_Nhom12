

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
 * Servlet implementation class DanhSachBaiHocServlet
 */
@WebServlet("/DanhSachBaiHocServlet")
public class DanhSachBaiHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanhSachBaiHocServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chuyenmuc = request.getParameter("chuyenmuc");
		int muc = Integer.parseInt(request.getParameter("muc"));
		//int page = Integer.parseInt("page");
		ArrayList<BaiHoc> listBaiHoc = new ArrayList<>();
		
		listBaiHoc= connectDB.getListBaiHoc(1, muc, chuyenmuc);
		  
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(listBaiHoc, new TypeToken<List<BaiHoc>>() {}.getType());
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
