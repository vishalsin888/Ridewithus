package com.car.pooling.repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.car.pooling.models.RegisterUser;

@Repository
public interface RegisterUserRepo extends JpaRepository<RegisterUser, Long>{
	
	public RegisterUser findByUseremailAndUserpassword(String username, String password);
	
}
