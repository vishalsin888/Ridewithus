package com.car.pooling.service;
import java.util.List;

import org.springframework.http.ResponseEntity;

import com.car.pooling.models.CabsBean;
import com.car.pooling.models.CityBean;
import com.car.pooling.models.RegisterUser;
import com.car.pooling.models.RideBean;

public interface UserRegisterService{

	public RegisterUser createUser(RegisterUser user);
	
	public ResponseEntity<RegisterUser> login(String username, String password);
	
	public ResponseEntity<List<CityBean>> getCities(String chars);
	
	public ResponseEntity<List<CabsBean>> getCabs(String from, String to,String from_lattitude,String from_longitude, String to_lattitude, String to_longitude,String passengers);
	
	public Boolean bookRide(String from, String to,String vehicle,String distance, String fare, String cardnumber, String cvv , String payeename);
	
	public ResponseEntity<List<RideBean>> getAllRides();
	
	public Boolean publishRide(String from_lattitude, String from_longitude,String vehicle,String cabnumber, String cabdrivername, String no_passengers);
}
