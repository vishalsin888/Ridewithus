package com.car.pooling.repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.car.pooling.models.FeedbackUser;
import com.car.pooling.models.RegisterUser;

@Repository
public interface FeedbackUserRepo extends JpaRepository<FeedbackUser, Long>{
	
}
