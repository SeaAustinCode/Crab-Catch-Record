package com.austin.CrabCatchRecord.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.austin.CrabCatchRecord.repos.CatchRecordRepo;
import com.austin.CrabCatchRecord.models.CatchRecord;


@Service
public class CatchRecordService {

	@Autowired // a simpler and easier way to do dependency injection
	private CatchRecordRepo catchRecordRepo;

	// CRUD

	// READ ALL Catch Records //
	public List<CatchRecord> allCatchRecords() {
		return catchRecordRepo.findAll();
	}

	// CREATE New Catch Record entry
	public CatchRecord createCatchRecord(CatchRecord catchrecord) {
		return catchRecordRepo.save(catchrecord);
	}

	// Retrieve one Catch Record by id
	public CatchRecord findCatchRecord(Long id) {
		Optional<CatchRecord> optionalCatchRecord = catchRecordRepo.findById(id);
		if (optionalCatchRecord.isPresent()) {
			return optionalCatchRecord.get();
		} else {
			return null;
		}
	}

	// UPDATE Catch Record entry
	public CatchRecord updateCatchRecord(CatchRecord catchrecord) {
		return catchRecordRepo.save(catchrecord);
	}

	// DELETE Catch Record Entry
	public void deleteCatchRecord(Long id) {
		catchRecordRepo.deleteById(id);
	}

}
