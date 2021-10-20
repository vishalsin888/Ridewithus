package com.car.pooling.models;

public class CabsBean {
	
	private int cabid;
	private String cabname;
	private String cabnumber;
	private String cabdrivername;
	private String cablattitude;
	private String cablongitude;
	
	public CabsBean() {
		super();
	}
	
	public CabsBean(String cabname, String cabnumber, String cabdrivername, String cablattitude, String cablongitude) {
		super();
		this.cabname = cabname;
		this.cabnumber = cabnumber;
		this.cabdrivername = cabdrivername;
		this.cablattitude = cablattitude;
		this.cablongitude = cablongitude;
	}
	public int getCabid() {
		return cabid;
	}
	public void setCabid(int cabid) {
		this.cabid = cabid;
	}
	public String getCabname() {
		return cabname;
	}
	public void setCabname(String cabname) {
		this.cabname = cabname;
	}
	public String getCabnumber() {
		return cabnumber;
	}
	public void setCabnumber(String cabnumber) {
		this.cabnumber = cabnumber;
	}
	public String getCabdrivername() {
		return cabdrivername;
	}
	public void setCabdrivername(String cabdrivername) {
		this.cabdrivername = cabdrivername;
	}
	public String getCablattitude() {
		return cablattitude;
	}
	public void setCablattitude(String cablattitude) {
		this.cablattitude = cablattitude;
	}
	public String getCablongitude() {
		return cablongitude;
	}
	public void setCablongitude(String cablongitude) {
		this.cablongitude = cablongitude;
	}
	@Override
	public String toString() {
		return "CabsBean [cabid=" + cabid + ", cabname=" + cabname + ", cabnumber=" + cabnumber + ", cabdrivername="
				+ cabdrivername + ", cablattitude=" + cablattitude + ", cablongitude=" + cablongitude + "]";
	}
	
}
