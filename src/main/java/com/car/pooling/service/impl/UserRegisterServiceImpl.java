package com.car.pooling.service.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
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
	
	@Autowired
	private RegisterUserRepo registerUserRepo;
	
	@Autowired
	private BookRideRepo bookRideRepo;
	
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
	public ResponseEntity<List<CabsBean>> getCabs(String from, String to,String from_lattitude,String from_longitude, String to_lattitude, String to_longitude) {
		
		String dbName = env.getProperty("spring.jpa.properties.hibernate.default_schema");
		StoredProcedureQuery query = this.entityManager.createStoredProcedureQuery(dbName + CABS_PROC);
        query.registerStoredProcedureParameter("p_from", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_from_lattitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_from_longitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to_lattitude", String.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("p_to_longitude", String.class, ParameterMode.IN);
        
        query.setParameter("p_from", from);
        query.setParameter("p_to", to);
        query.setParameter("p_from_lattitude", from_lattitude);
        query.setParameter("p_from_longitude", from_longitude);
        query.setParameter("p_to_lattitude", to_lattitude);
        query.setParameter("p_to_longitude", to_longitude);
        
		return ResponseEntity.ok(query.getResultList());
		
	}

	@Override
	public RideBean bookRide(RideBean rideBean) {
		// TODO Auto-generated method stub
		return this.bookRideRepo.save(rideBean);
	}

}
