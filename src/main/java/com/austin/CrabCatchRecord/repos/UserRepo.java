package com.austin.CrabCatchRecord.repos;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.austin.CrabCatchRecord.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long>{
	Optional<User> findByEmail(String email);
	List<User> findAll();

}
