
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

	public static boolean ConnDB(String username, String password) {
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
			rs = stm.executeQuery("select * from ieltsonline.user where username = '" + username + "' and password ='"
					+ password + "' ");
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

	public static String hoten(String username) {
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
			rs = stm.executeQuery("select hoten from ieltsonline.user where username = '" + username + "'");
			while (rs.next()) {
				name = rs.getString("hoten");
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return name;
	}

	public static User ThongTin(String username) {

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

			ResultSet rs = stm.executeQuery(
					"SELECT username,hoten,sodienthoai,email,trangthai,roleID,trangthai FROM ieltsonline.user where username = '"
							+ username + "'");

			while (rs.next()) {

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

	public static void DangXuat(String username) {

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
			stm.executeUpdate("update ieltsonline.user set thoigianhoatdonglancuoi = '" + layngay()
					+ "' where username = '" + username + "'");
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

	public static boolean taoBaiVietMoi(String td, String noidung, String cm, int muc) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {

		}
		Connection cnn = null;
		Statement stm = null;
		try {
			cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ieltsonline", "root", "cong12");
		} catch (SQLException e1) {

		}
		try {
			Statement stm1 = (Statement) cnn.createStatement();
			ResultSet rs = stm1.executeQuery("SELECT MAX(id) max FROM ieltsonline.baihoc");
			int id = -1;
			;
			while (rs.next()) {
				id = rs.getInt("max");
			}
			id = id + 1;
			stm = (Statement) cnn.createStatement();
			stm.executeUpdate("insert into ieltsonline.baihoc values(" + id + ",'" + td + "','" + noidung + "','" + cm
					+ "'," + muc + ",'" + layngay() + "')");

			return true;
		} catch (SQLException e) {
			return false;
		}
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

	public static ArrayList<UserClass> TimUserTheoUsername(int page, String us) {

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
					"select username,hoten,sodienthoai,email,trangthai,thoigianhoatdonglancuoi from ieltsonline.user where roleID='2' and username like ('%"
							+ us + "%') limit " + pg2 + "," + pg1 + "");

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

	public static ArrayList<UserClass> TimUserTheoEmail(int page, String em) {

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
					"select username,hoten,sodienthoai,email,trangthai,thoigianhoatdonglancuoi from ieltsonline.user where roleID='2' and email like ('%"
							+ em + "%') limit " + pg2 + "," + pg1 + "");

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

	public static ArrayList<BaiHoc> getListBaiHoc(int page, int muc, String chuyenmuc) {

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

		ArrayList<BaiHoc> BHList = new ArrayList<BaiHoc>();
		try {
			int pg1 = page * 10;
			int pg2 = pg1 - 10;
			ResultSet rs = stm.executeQuery("SELECT * FROM ieltsonline.baihoc where chuyenmuc = '" + chuyenmuc
					+ "' and muc = " + muc + " limit " + pg2 + "," + pg1 + "");

			while (rs.next()) {
				BaiHoc bh = new BaiHoc();
				bh.setID(rs.getInt("id"));
				bh.setTieude(rs.getString("tieude"));

				BHList.add(bh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return BHList;
	}

	public static ArrayList<BaiHoc> NoiDungBaiHoc(int id) {

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

		ArrayList<BaiHoc> bh = new ArrayList<>();
		try {

			ResultSet rs = stm.executeQuery("SELECT * FROM ieltsonline.baihoc where id = " + id + "");

			while (rs.next()) {
				BaiHoc bhi = new BaiHoc();
				bhi.setID(rs.getInt("id"));
				bhi.setTieude(rs.getString("tieude"));
				bhi.setNoidung(rs.getString("noidung"));
				bh.add(bhi);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return bh;
	}

	public static ArrayList<TaiLieuClass> DSTaiLieu(int page) {

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
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		ArrayList<TaiLieuClass> tailieu = new ArrayList<>();
		try {
			int pg1 = page * 5;
			int pg2 = pg1 - 5;
			ResultSet rs = stm.executeQuery("SELECT * FROM ieltsonline.tailieu limit " + pg2 + "," + pg1 + ""); // 

			while (rs.next()) {
				TaiLieuClass tl = new TaiLieuClass();
				tl.setId(rs.getInt("id"));
				tl.setLink(rs.getString("link"));
				tl.setNgayup(rs.getDate("ngayup"));
				tl.setNguoiup(rs.getString("nguoiup"));
				tl.setTieude(rs.getString("tieude"));
				tl.setMota(rs.getString("mota"));
				tailieu.add(tl);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return tailieu;
	}
	
	public static ArrayList<TaiLieuClass> XemNoiDungTaiLieu(int id) {

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
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		ArrayList<TaiLieuClass> tailieu = new ArrayList<>();
		try {
			
			ResultSet rs = stm.executeQuery("SELECT * FROM ieltsonline.tailieu where id = "+id+""); // 

			while (rs.next()) {
				TaiLieuClass tl = new TaiLieuClass();
				tl.setId(rs.getInt("id"));
				tl.setLink(rs.getString("link"));
				tl.setNgayup(rs.getDate("ngayup"));
				tl.setNguoiup(rs.getString("nguoiup"));
				tl.setTieude(rs.getString("tieude"));
				tl.setMota(rs.getString("mota"));
				tailieu.add(tl);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return tailieu;
	}
}
