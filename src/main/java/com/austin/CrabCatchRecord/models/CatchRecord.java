package com.austin.CrabCatchRecord.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "catchrecords")
public class CatchRecord {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min = 1, message = "Marine Area must be declared.")
	private String marinearea;

	@NotNull 
	@Min(value = 1, message= "Month must be provided for a catch record.")
	@Max(value = 12, message ="Month must be provided for a catch record.")
	private Integer month;

	@NotNull
	@Min(value = 1, message= "Date must be provided for a catch record.")
	@Max(value = 31, message ="Date must be provided for a catch record.")
	private Integer day;
	
	@NotNull
	@Min(value = 1, message= "Catch amount must be at least 1.")
	@Max(value = 5, message= "Catch amount cannot exceed 5 crabs per day.")
	private Integer catchamount;

	// === Many: 1 ===
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="catchrecordowner_id")
	private User catchrecordowner;

	// CONSTRUCTOR
	public CatchRecord() {}

	
	// === GETTERS AND SETTERS ===
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMarinearea() {
		return marinearea;
	}

	public void setMarinearea(String marinearea) {
		this.marinearea = marinearea;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Integer getCatchamount() {
		return catchamount;
	}

	public void setCatchamount(Integer catchamount) {
		this.catchamount = catchamount;
	}

	public User getCatchrecordowner() {
		return catchrecordowner;
	}

	public void setCatchrecordowner(User catchrecordowner) {
		this.catchrecordowner = catchrecordowner;
	}
	

}
