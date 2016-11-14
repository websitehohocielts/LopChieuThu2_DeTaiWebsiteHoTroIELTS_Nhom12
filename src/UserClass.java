import java.sql.Date;

public class UserClass {
	private String username;
	private String hoten;
	private int sodienthoai;
	private String email;
	private boolean trangthai;
	private String thoigianhdcuoi;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public int getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(int sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isTrangthai() {
		return trangthai;
	}
	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}
	public String getThoigianhdcuoi() {
		return thoigianhdcuoi;
	}
	public void setThoigianhdcuoi(String thoigianhdcuoi) {
		this.thoigianhdcuoi = thoigianhdcuoi;
	}
}
