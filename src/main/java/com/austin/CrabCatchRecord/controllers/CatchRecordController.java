package com.austin.CrabCatchRecord.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.austin.CrabCatchRecord.models.CatchRecord;
import com.austin.CrabCatchRecord.models.User;
import com.austin.CrabCatchRecord.services.CatchRecordService;
import com.austin.CrabCatchRecord.services.UserService;

@Controller
public class CatchRecordController {

	@Autowired
	private CatchRecordService catchRecordService;
	
	@Autowired
	private UserService userService;

	// CREATE NEW CATCH RECORD JSP
	@GetMapping("/catchrecords/new")
	public String createNewCatchRecordJSP(@ModelAttribute("catchRecord") CatchRecord catchRecord, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		User userloggedin = userService.findOne(userId);
		model.addAttribute("userloggedin", userloggedin);
		List<CatchRecord> allCatchRecords = catchRecordService.allCatchRecords();
		model.addAttribute("allCatchRecords", allCatchRecords);
		return "newCatchRecord.jsp";
	}

	// CREATE A NEW CATCH RECORD
	@PostMapping("/catchrecords")
	public String create(@Valid @ModelAttribute("catchRecord") CatchRecord catchRecord, BindingResult result) {
		if (result.hasErrors()) {
			return "newCatchRecord.jsp";
		} else {
			catchRecordService.createCatchRecord(catchRecord);
			return "redirect:/home";
		}
	}
	
	// EDIT ONE CATCH RECORD
	@GetMapping("/catchrecords/{id}")
	public String oneCatchRecord(@PathVariable("id") Long id, Model model) {
		CatchRecord thisCatchRecord = catchRecordService.findCatchRecord(id);
		model.addAttribute("thisCatchRecord", thisCatchRecord);
		return "oneCatchRecord.jsp";
	}
	// REMOVE ONE CATCH RECORD 
	@PostMapping("/remove/{id}")
	public String removeFromUser(@PathVariable("id") Long catchRecordId, HttpSession session) {
		// find the catch record
		CatchRecord removeThisCatchRecord = catchRecordService.findCatchRecord(catchRecordId);
		
		// find the user
		Long userId = (Long)session.getAttribute("user_id");
		User user = userService.findOne(userId);
		
		// remove the user from the catch record - in accordance with the c:if this will make it disappear but still remain in the database under no user. 
		removeThisCatchRecord.setCatchrecordowner(null);
		catchRecordService.updateCatchRecord(removeThisCatchRecord);
		
//		user.getCatchrecords().remove(removeThisCatchRecord);
//		userService.update(user);
		return "redirect:/home";
	}
	

}