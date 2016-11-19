

import java.io.IOException;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class connectDB {
	
	public static boolean ConnDB(String username,String password)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		Connection cnn = null;
		Statement stm = null;
		ResultSet rs = null;	
		boolean tmp = false;
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
			stm = (Statement) cnn.createStatement();
			rs = stm.executeQuery("select * from ieltsonline.user where username = '"+username+"' and password ='"+password+"' ");
			tmp = rs.next();
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return tmp;
	}
	
	public static String hoten(String username)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		Connection cnn = null;
		Statement stm = null;
		ResultSet rs = null;	
		String name = null;
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
			stm = (Statement) cnn.createStatement();
			rs = stm.executeQuery("select hoten from ieltsonline.user where username = '"+username+"'");
			while(rs.next()){
				name = rs.getString("hoten");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return name;
	}
	
	public static User ThongTin(String username){
		
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
		
      User user = new User();
      try {
      	
      	ResultSet rs = stm.executeQuery("SELECT username,hoten,sodienthoai,email,trangthai,roleID,trangthai FROM ieltsonline.user where username = '"+username+"'");
      
          while(rs.next()) {	
          
          	user.setUsername(rs.getString("username"));
          	user.setHoten(rs.getString("hoten"));
             user.setSodienthoai(rs.getInt("sodienthoai"));
             user.setEmail(rs.getString("email"));
          	user.setTrangthai(rs.getBoolean("trangthai"));
          	user.setRole(rs.getString("roleID"));
          }
      } catch (SQLException e) {
          e.printStackTrace();
      }

      return user;
	}
	
	
	public static void DangXuat(String username)
	{
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Connection cnn = null;
			Statement stm = null;	
			try {
				cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				stm = (Statement) cnn.createStatement();
				stm.executeUpdate("update ieltsonline.user set thoigianhoatdonglancuoi = '"+layngay()+"' where username = '"+username+"'");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	public static String layngay() {

		Date thoiGian = new Date(System.currentTimeMillis());
		SimpleDateFormat dinhDangThoiGian = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dinhDangThoiGian.format(thoiGian.getTime());

	}

	public static ArrayList<UserClass> getListUser(int page) {

		Connection cnn = null;
		Statement stm = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
		} catch (SQLException e1) {

			e1.printStackTrace();
		}
		try {
			stm = (Statement) cnn.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		ArrayList<UserClass> userList = new ArrayList<UserClass>();
		try {
			int pg1 = page * 10;
			int pg2 = pg1 - 10;
			ResultSet rs = stm.executeQuery(
					"select username,hoten,sodienthoai,email,trangthai,thoigianhoatdonglancuoi from ieltsonline.user where roleID='2' limit "
							+ pg2 + "," + pg1 + "");

			while (rs.next()) {
				UserClass user = new UserClass();
				user.setEmail(rs.getString("email"));
				user.setHoten(rs.getString("hoten"));
				user.setSodienthoai(rs.getInt("sodienthoai"));
				user.setThoigianhdcuoi(rs.getString("thoigianhoatdonglancuoi"));
				user.setTrangthai(rs.getBoolean("trangthai"));
				user.setUsername(rs.getString("username"));

				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userList;
	}
	
	
	public static ArrayList<UserClass> TimUserTheoUsername(int page,String us) {

		Connection cnn = null;
		Statement stm = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
		} catch (SQLException e1) {

			e1.printStackTrace();
		}
		try {
			stm = (Statement) cnn.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		ArrayList<UserClass> userList = new ArrayList<UserClass>();
		try {
			int pg1 = page * 10;
			int pg2 = pg1 - 10;
			ResultSet rs = stm.executeQuery(
					"select username,hoten,sodienthoai,email,trangthai,thoigianhoatdonglancuoi from ieltsonline.user where roleID='2' and username like ('%"+us+"%') limit "
							+ pg2 + "," + pg1 + "");

			while (rs.next()) {
				UserClass user = new UserClass();
				user.setEmail(rs.getString("email"));
				user.setHoten(rs.getString("hoten"));
				user.setSodienthoai(rs.getInt("sodienthoai"));
				user.setThoigianhdcuoi(rs.getString("thoigianhoatdonglancuoi"));
				user.setTrangthai(rs.getBoolean("trangthai"));
				user.setUsername(rs.getString("username"));

				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userList;
	}
	
	public static ArrayList<UserClass> TimUserTheoEmail(int page,String em) {

		Connection cnn = null;
		Statement stm = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
		} catch (SQLException e1) {

			e1.printStackTrace();
		}
		try {
			stm = (Statement) cnn.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		ArrayList<UserClass> userList = new ArrayList<UserClass>();
		try {
			int pg1 = page * 10;
			int pg2 = pg1 - 10;
			ResultSet rs = stm.executeQuery(
					"select username,hoten,sodienthoai,email,trangthai,thoigianhoatdonglancuoi from ieltsonline.user where roleID='2' and email like ('%"+em+"%') limit "
							+ pg2 + "," + pg1 + "");

			while (rs.next()) {
				UserClass user = new UserClass();
				user.setEmail(rs.getString("email"));
				user.setHoten(rs.getString("hoten"));
				user.setSodienthoai(rs.getInt("sodienthoai"));
				user.setThoigianhdcuoi(rs.getString("thoigianhoatdonglancuoi"));
				user.setTrangthai(rs.getBoolean("trangthai"));
				user.setUsername(rs.getString("username"));

				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userList;
	}

}
