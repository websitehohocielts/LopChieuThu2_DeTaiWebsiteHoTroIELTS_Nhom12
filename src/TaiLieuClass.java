import java.sql.Date;

public class TaiLieuClass {
	private int id;
	private String tieude;
	private Date ngayup;
	private String link;
	private String nguoiup;
	private int loai;
	private boolean share;
	private String mota;
	
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public Date getNgayup() {
		return ngayup;
	}
	public void setNgayup(Date ngayup) {
		this.ngayup = ngayup;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getNguoiup() {
		return nguoiup;
	}
	public void setNguoiup(String nguoiup) {
		this.nguoiup = nguoiup;
	}
	public int getLoai() {
		return loai;
	}
	public void setLoai(int loai) {
		this.loai = loai;
	}
	public boolean isShare() {
		return share;
	}
	public void setShare(boolean share) {
		this.share = share;
	}
}
