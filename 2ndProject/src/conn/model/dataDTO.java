package conn.model;

public class dataDTO {
	
	private String id;
	private String partner;
	private String temper;
	private String savedate;
	private String worry;
	private String angry;
	private String sad;
	private String happy;
	private String morning;
	private String night;
	private String kikicount;
	private String worry1;
	private String worry2;
	private String worry3;
	private String angry1;
	private String angry2;
	private String angry3;
	private String sad1;
	private String sad2;
	private String sad3;
	private String happy1;
	private String happy2;
	private String happy3;
	private String relation1;
	private String relation2;
	private String relation3;
	private String relation4;
	private String relation5;
	private String relation6;
	
	
	public dataDTO(String id, String partner, String worry, String angry, String sad, String happy) {
		super();
		this.id = id;
		this.partner = partner;
		this.worry = worry;
		this.angry = angry;
		this.sad = sad;
		this.happy = happy;
	}
	
	



	public dataDTO(String id, String partner,String morning,String night, String kikicount) {
		super();
		this.id = id;
		this.partner = partner;
		this.morning = morning;
		this.night = night;
		this.kikicount = kikicount;
	}
	public dataDTO(String morning,String night, String kikicount) {
		super();
		
		this.morning = morning;
		this.night = night;
		this.kikicount = kikicount;
	}




	public dataDTO(String id, String partner, String worry1, String worry2, String worry3, String angry1, String angry2, String angry3,
			String sad1, String sad2, String sad3, String happy1, String happy2, String happy3) {
		super();
		this.id = id;
		this.partner = partner;
		this.worry1 = worry1;
		this.worry2 = worry2;
		this.worry3 = worry3;
		this.angry1 = angry1;
		this.angry2 = angry2;
		this.angry3 = angry3;
		this.sad1 = sad1;
		this.sad2 = sad2;
		this.sad3 = sad3;
		this.happy1 = happy1;
		this.happy2 = happy2;
		this.happy3 = happy3;
	}

	
	

	
	public dataDTO(String id, String partner, String temper, String savedate) {
		super();
		this.id = id;
		this.partner = partner;
		this.temper = temper;
		this.savedate = savedate;
	}



	public String getTemper() {
		return temper;
	}



	public void setTemper(String temper) {
		this.temper = temper;
	}



	public String getSavedate() {
		return savedate;
	}



	public void setSavedate(String savedate) {
		this.savedate = savedate;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPartner() {
		return partner;
	}



	public void setPartner(String partner) {
		this.partner = partner;
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


	public String getMorning() {
		return morning;
	}



	public void setMorning(String morning) {
		this.morning = morning;
	}



	public String getNight() {
		return night;
	}



	public void setNight(String night) {
		this.night = night;
	}



	public String getKikicount() {
		return kikicount;
	}



	public void setKikicount(String kikicount) {
		this.kikicount = kikicount;
	}



	public String getWorry1() {
		return worry1;
	}



	public void setWorry1(String worry1) {
		this.worry1 = worry1;
	}



	public String getWorry2() {
		return worry2;
	}



	public void setWorry2(String worry2) {
		this.worry2 = worry2;
	}



	public String getWorry3() {
		return worry3;
	}



	public void setWorry3(String worry3) {
		this.worry3 = worry3;
	}



	public String getAngry1() {
		return angry1;
	}



	public void setAngry1(String angry1) {
		this.angry1 = angry1;
	}



	public String getAngry2() {
		return angry2;
	}



	public void setAngry2(String angry2) {
		this.angry2 = angry2;
	}



	public String getAngry3() {
		return angry3;
	}



	public void setAngry3(String angry3) {
		this.angry3 = angry3;
	}



	public String getSad1() {
		return sad1;
	}



	public void setSad1(String sad1) {
		this.sad1 = sad1;
	}



	public String getSad2() {
		return sad2;
	}



	public void setSad2(String sad2) {
		this.sad2 = sad2;
	}



	public String getSad3() {
		return sad3;
	}



	public void setSad3(String sad3) {
		this.sad3 = sad3;
	}



	public String getHappy1() {
		return happy1;
	}



	public void setHappy1(String happy1) {
		this.happy1 = happy1;
	}



	public String getHappy2() {
		return happy2;
	}



	public void setHappy2(String happy2) {
		this.happy2 = happy2;
	}



	public String getHappy3() {
		return happy3;
	}



	public void setHappy3(String happy3) {
		this.happy3 = happy3;
	}








	
	
	
	
	
	
}
