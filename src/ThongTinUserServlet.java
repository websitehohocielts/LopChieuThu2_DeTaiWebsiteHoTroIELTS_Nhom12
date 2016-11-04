

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class ThongTinUserServlet
 */
@WebServlet("/ThongTinUserServlet")
public class ThongTinUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongTinUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=null;
		  name = request.getParameter("username");
		  ArrayList<User> user=new ArrayList<User>();
		  user=getAllCountries(name);
			Gson gson = new Gson();
			response.setCharacterEncoding("UTF-8"); 
			JsonElement element = gson.toJsonTree(user, new TypeToken<List<User>>() {}.getType());

			JsonArray jsonArray = element.getAsJsonArray();
		  
			  
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8"); 
			response.getWriter().print(jsonArray);
	}
	public static ArrayList<User> getAllCountries(String ct) {
    	//connection = FetchData.getConnection();
    	
         Connection cnn = null;            
          Statement stm = null;     
         String sql = null;
         
         try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
         try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
         try {
			stm = (Statement) cnn.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
        ArrayList<User> userList = new ArrayList<User>();
        try {
        	
        	ResultSet rs = stm.executeQuery("SELECT username,hoten,sodienthoai,email,trangthai FROM ieltsonline.user where username = '"+ct+"'");
        
            while(rs.next()) {	
            	User user=new User();
            	user.setUsername(rs.getString("username"));
            	user.setHoten(rs.getString("hoten"));
                user.setSodienthoai(rs.getInt("sodienthoai"));
                user.setEmail(rs.getString("email"));
            	user.setTrangthai(rs.getBoolean("trangthai"));
            	
            	userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private User getInfo(String username) {

        User user = new User();
        Connection conn = null;            
        PreparedStatement stmt = null;     
        String sql = null;

        try {      
        	Class.forName("com.mysql.jdbc.Driver");
            //conn = ((DataSource) ctx.lookup("jdbc/mysql")).getConnection(); 
        	conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
            sql = "select username,hoten,sodienthoai,email,trangthai FROM ieltsonline.user where username = ?"; 
            stmt = (PreparedStatement) conn.prepareStatement(sql);
            stmt.setString(1, username.trim());
            ResultSet rs = stmt.executeQuery(); 

            while(rs.next()){ 
            	user.setUsername(rs.getString("username").trim());
            	user.setHoten(rs.getString("hoten").trim());
            	user.setEmail(rs.getString("email").trim());
            	user.setSodienthoai(rs.getString("sodienthoai") == null ? new Integer(0) : Integer.parseInt(rs.getString("sodienthoai").trim()));
            	user.setTrangthai(rs.getBoolean("trangthai"));
            }                                                                         

            rs.close();                                                               
            stmt.close();                                                             
            stmt = null;                                                              


            conn.close();                                                             
            conn = null;                                                   

        }                                                               
        catch(Exception e){System.out.println(e);}                      

        finally {                                                       
 
            if (stmt != null) {                                            
                try {                                                         
                    stmt.close();                                                
                } catch (SQLException sqlex) {                                
                    // ignore -- as we can't do anything about it here           
                }                                                             

                stmt = null;                                            
            }                                                        

            if (conn != null) {                                      
                try {                                                   
                    conn.close();                                          
                } catch (SQLException sqlex) {                          
                    // ignore -- as we can't do anything about it here     
                }                                                       

                conn = null;                                            
            }                                                        
        }              

        return user;

    }   


}
