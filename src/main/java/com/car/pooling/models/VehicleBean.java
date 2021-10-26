package com.car.pooling.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class VehicleBean {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long vehicleId;
	
	private String vehiclename;
	private String vehicleType;
	private String vehicleNumber;
	private String vehicleDriverName;
	private String vehicle_no_of_passengers;
	
	public VehicleBean() {
		super();
	}
	public VehicleBean(String vehiclename, String vehicleType, String vehicleNumber, String vehicleDriverName,
			String vehicle_no_of_passengers) {
		super();
		this.vehiclename = vehiclename;
		this.vehicleType = vehicleType;
		this.vehicleNumber = vehicleNumber;
		this.vehicleDriverName = vehicleDriverName;
		this.vehicle_no_of_passengers = vehicle_no_of_passengers;
	}
	public Long getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(Long vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getVehiclename() {
		return vehiclename;
	}
	public void setVehiclename(String vehiclename) {
		this.vehiclename = vehiclename;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public String getVehicleNumber() {
		return vehicleNumber;
	}
	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}
	public String getVehicleDriverName() {
		return vehicleDriverName;
	}
	public void setVehicleDriverName(String vehicleDriverName) {
		this.vehicleDriverName = vehicleDriverName;
	}
	public String getVehicle_no_of_passengers() {
		return vehicle_no_of_passengers;
	}
	public void setVehicle_no_of_passengers(String vehicle_no_of_passengers) {
		this.vehicle_no_of_passengers = vehicle_no_of_passengers;
	}
	@Override
	public String toString() {
		return "VehicleBean [vehicleId=" + vehicleId + ", vehiclename=" + vehiclename + ", vehicleType=" + vehicleType
				+ ", vehicleNumber=" + vehicleNumber + ", vehicleDriverName=" + vehicleDriverName
				+ ", vehicle_no_of_passengers=" + vehicle_no_of_passengers + "]";
	}
	
}
