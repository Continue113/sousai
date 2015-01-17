package org.sousai.search;

public class Court {
	private int id = 0 ;
	private String name = null ;
	private int courtTypeId = 0 ;
	private String matchType = null ;
	private String address = null ;
	private int tableNum = 0 ;
	private String tel = null ;
	private int matchCount = 0 ;
	private String price = null ;
	private String worktime = null ;
	private String intro = null ;
	private String verify = null ;
	private String relDate = null ;
	private String modDate = null ;
	private int userId = 0 ;
	
	public static class Builder {
		private int id = 0 ;
		private String name = null ;
		private int courtTypeId = 0 ;
		private String matchType = null ;
		private String address = null ;
		private int tableNum = 0 ;
		private String tel = null ;
		private int matchCount = 0 ;
		private String price = null ;
		private String worktime = null ;
		private String intro = null ;
		private String verify = null ;
		private String relDate = null ;
		private String modDate = null ;
		private int userId = 0 ;
		
		public Builder id(int id) {
			this.id = id;
			return this;
		}
		
		public Builder name(String name) {
			this.name = name;
			return this;
		}
		
		public Builder courtTypeId(int courtTypeId){
			this.courtTypeId = courtTypeId ;
			return this ;
		}
		
		public Builder matchType(String matchType){
			this.matchType = matchType ;
			return this ;
		}
		
		public Builder address(String address){
			this.address = address ;
			return this ;
		}
		
		public Builder tableNum(int tableNum){
			this.tableNum = tableNum ;
			return this ;
		}
		
		public Builder tel(String tel){
			this.tel = tel ;
			return this ;
		}
		
		public Builder matchCount(int matchCount){
			this.matchCount = matchCount ;
			return this ;
		}
		
		public Builder price(String price){
			this.price = price ;
			return this ;
		}
		
		public Builder worktime(String worktime){
			this.worktime = worktime ;
			return this ;
		}
		
		public Builder intro(String intro){
			this.intro = intro ;
			return this ;
		}
		
		public Builder verify(String verify){
			this.verify = verify ;
			return this ;
		}
		
		public Builder relDate(String relDate){
			this.relDate = relDate ;
			return this ;
		}
		
		public Builder modDate(String modDate){
			this.modDate = modDate ;
			return this ;
		}
		
		public Builder userId(int userId){
			this.userId = userId ;
			return this ;
		}
		
		public Court build(){
			return new Court(this) ;
		}
	}
	
	public Court(Builder builder){
		this.id = builder.id ;
		this.name = builder.name ;
		this.courtTypeId = builder.courtTypeId ;
		this.matchType = builder.matchType ;
		this.address = builder.address ;
		this.tableNum = builder.tableNum ;
		this.tel = builder.tel ;
		this.matchCount = builder.matchCount ;
		this.price = builder.price ;
		this.worktime = builder.worktime ;
		this.intro = builder.intro ;
		this.verify = builder.verify ;
		this.relDate = builder.relDate ;
		this.modDate = builder.modDate ;
		this.userId = builder.userId ;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCourtTypeId() {
		return courtTypeId;
	}
	public void setCourtTypeId(int courtTypeId) {
		this.courtTypeId = courtTypeId;
	}
	public String getMatchType() {
		return matchType;
	}
	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getTableNum() {
		return tableNum;
	}
	public void setTableNum(int tableNum) {
		this.tableNum = tableNum;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getMatchCount() {
		return matchCount;
	}
	public void setMatchCount(int matchCount) {
		this.matchCount = matchCount;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getWorktime() {
		return worktime;
	}
	public void setWorktime(String worktime) {
		this.worktime = worktime;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public String getRelDate() {
		return relDate;
	}
	public void setRelDate(String relDate) {
		this.relDate = relDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
