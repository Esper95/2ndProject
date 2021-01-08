package conn.model;

public class dataDTO {
	private String worry;
	private String angry;
	private String sad;
	private String happy;
	public dataDTO(String worry, String angry, String sad, String happy) {
		super();
		this.worry = worry;
		this.angry = angry;
		this.sad = sad;
		this.happy = happy;
	}
	public String getWorry() {
		return worry;
	}
	public void setWorry(String worry) {
		this.worry = worry;
	}
	public String getAngry() {
		return angry;
	}
	public void setAngry(String angry) {
		this.angry = angry;
	}
	public String getSad() {
		return sad;
	}
	public void setSad(String sad) {
		this.sad = sad;
	}
	public String getHappy() {
		return happy;
	}
	public void setHappy(String happy) {
		this.happy = happy;
	}
	
	
	
	
	
}
