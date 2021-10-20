package com.car.pooling.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="recent_rides")
public class RideBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long rideid;
	private String from ;
	private String to ;
	private String vehicle ;
	private String distance ;
	private String fare ;
	private String cardnumber ;
	private String cvv ;
	private String payeename ;
	
	public RideBean(String from, String to, String vehicle, String distance, String fare, String cardnumber, String cvv,
			String payeename) {
		super();
		this.from = from;
		this.to = to;
		this.vehicle = vehicle;
		this.distance = distance;
		this.fare = fare;
		this.cardnumber = cardnumber;
		this.cvv = cvv;
		this.payeename = payeename;
	}
	
	
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getVehicle() { 
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getFare() {
		return fare;
	}
	public void setFare(String fare) {
		this.fare = fare;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getPayeename() {
		return payeename;
	}
	public void setPayeename(String payeename) {
		this.payeename = payeename;
	}
	@Override
	public String toString() {
		return "RideBean [rideid=" + rideid + ", from=" + from + ", to=" + to + ", vehicle=" + vehicle + ", distance="
				+ distance + ", fare=" + fare + ", cardnumber=" + cardnumber + ", cvv=" + cvv + ", payeename="
				+ payeename + "]";
	}
	
	
}
