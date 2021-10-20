package com.car.pooling.models;

public class CityBean {
	
	private int cityid;
	private String cityname;
	private String lattitude;
	private String longitude;
	
	public CityBean() {
		super();
	}
	public CityBean(String cityname, String lattitude, String longitude) {
		super();
		this.cityname = cityname;
		this.lattitude = lattitude;
		this.longitude = longitude;
	}
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public String getLattitude() {
		return lattitude;
	}
	public void setLattitude(String lattitude) {
		this.lattitude = lattitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	@Override
	public String toString() {
		return "CityBean [cityid=" + cityid + ", cityname=" + cityname + ", lattitude=" + lattitude + ", longitude="
				+ longitude + "]";
	}
	
}
