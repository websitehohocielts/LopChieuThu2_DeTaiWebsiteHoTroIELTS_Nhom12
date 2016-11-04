

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		return tmp;
	}

}
