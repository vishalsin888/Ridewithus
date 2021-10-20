package com.car.pooling.repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.car.pooling.models.RegisterUser;
import com.car.pooling.models.RideBean;

@Repository
public interface BookRideRepo extends JpaRepository<RideBean, Long>{
	
	
	
}
