package com.austin.CrabCatchRecord.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.austin.CrabCatchRecord.models.CatchRecord;

@Repository
public interface CatchRecordRepo extends CrudRepository<CatchRecord, Long> {
	List<CatchRecord> findAll();
}
