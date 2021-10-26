package com.car.pooling.repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.car.pooling.models.FeedbackUser;
import com.car.pooling.models.RegisterUser;
import com.car.pooling.models.VehicleBean;

@Repository
public interface VehicleRepo extends JpaRepository<VehicleBean, Long>{
	
}
