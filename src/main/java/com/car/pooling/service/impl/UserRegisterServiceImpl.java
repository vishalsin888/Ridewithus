package com.car.pooling.service.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.car.pooling.models.CabsBean;
import com.car.pooling.models.CityBean;
import com.car.pooling.models.RegisterUser;
import com.car.pooling.models.RideBean;
import com.car.pooling.repo.BookRideRepo;
import com.car.pooling.repo.RegisterUserRepo;
import com.car.pooling.service.UserRegisterService;

@Service
public class UserRegisterServiceImpl implements UserRegisterService{

	private final static String CITIES_PROC = ".fetchCitiesList";
	private final static String CABS_PROC = ".fetchCabsList";
	private final static String BOOKRIDE_PROC = ".saveBookedRide";
	private final static String GETALL_RIDES = ".getAllRides";
	
	@Autowired
	private RegisterUserRepo registerUserRepo;
	
    @Autowired
    private EntityManager entityManager;
    
    @Autowired
    private Environment env;
	
	@Override
	public RegisterUser createUser(RegisterUser user) {
		
		return this.registerUserRepo.save(user);
	}

	@Override
	public ResponseEntity<RegisterUser> login(String username, String password) {
		
		return ResponseEntity.ok(this.registerUserRepo.findByUseremailAndUserpassword(username, password));
	}

	//get cities list from db using procedures
	@Override
	public ResponseEntity<List<CityBean>> getCities(String citychars) {
		
		String dbName = env.getProperty("spring.jpa.properties.hibernate.default_schema");
		StoredProcedureQuery query = this.entityManager.createStoredProcedureQuery(dbName + CITIES_PROC);
        query.registerStoredProcedureParameter("p_threeChars", String.class, ParameterMode.IN);
        query.setParameter("p_threeChars", citychars);
		return ResponseEntity.ok(query.getResultList());
		
	}

	//getCabs list using procs
	@Override
	public ResponseEntity<List<CabsBean>> getCabs(String from, String to,String from_lattitude,String from_longitude, String to_lattitude, String to_longitude,String passengers) {
		
		String dbName = env.getProperty("spring.jpa.properties.hibernate.default_schema");
		StoredProcedureQuery query = this.entityManager.createStoredProcedureQuery(dbName + CABS_PROC);
        query.registerStoredProcedureParameter("p_from", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_from_lattitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_from_longitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to_lattitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to_longitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_passengers", String.class, ParameterMode.IN);
        
        query.setParameter("p_from", from);
        query.setParameter("p_to", to);
        query.setParameter("p_from_lattitude", from_lattitude);
        query.setParameter("p_from_longitude", from_longitude);
        query.setParameter("p_to_lattitude", to_lattitude);
        query.setParameter("p_to_longitude", to_longitude);
        query.setParameter("p_passengers", passengers);
        
		return ResponseEntity.ok(query.getResultList());
		
	}

	@Override
	public Boolean bookRide(String from, String to, String vehicle, String distance, String fare,
			String cardnumber, String cvv, String payeename) {
		// TODO Auto-generated method stub
		
		String dbName = env.getProperty("spring.jpa.properties.hibernate.default_schema");
		StoredProcedureQuery query = this.entityManager.createStoredProcedureQuery(dbName +BOOKRIDE_PROC);
        query.registerStoredProcedureParameter("p_from", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_vehicle", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_distance", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_fare", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_cardnumber", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_cvv", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_payeename", String.class, ParameterMode.IN);
        
        query.setParameter("p_from", from);
        query.setParameter("p_to", to);
        query.setParameter("p_vehicle", vehicle);
        query.setParameter("p_distance", distance);
        query.setParameter("p_fare", fare);
        query.setParameter("p_cardnumber", cardnumber);
        query.setParameter("p_cvv", cvv);
        query.setParameter("p_payeename", payeename);
        boolean flag = query.execute();
        return flag;
	}
	
	@Override
	public ResponseEntity<List<RideBean>> getAllRides() {
		
		String dbName = env.getProperty("spring.jpa.properties.hibernate.default_schema");
		StoredProcedureQuery query = this.entityManager.createStoredProcedureQuery(dbName + GETALL_RIDES);
		return ResponseEntity.ok(query.getResultList());
		
	}



}
