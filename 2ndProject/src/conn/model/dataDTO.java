package conn.model;

public class dataDTO {
	private String id;
	private String pw;
	private String phone;
	private String email;
	
	
	
	
	public dataDTO(String id, String pw, String phone, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.email = email;
	}
	
	public dataDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
