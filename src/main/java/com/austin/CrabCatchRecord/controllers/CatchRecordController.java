package com.austin.CrabCatchRecord.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	// LANDING PAGE
	@GetMapping("/")
	public String goToLandingPage(@ModelAttribute("catchRecord") CatchRecord catchRecord, Model model) {
		return "LandingPage.jsp";
	}

	// Marine Areas
	@GetMapping("/marine-areas")
	public String goToMarineAreaPage(@ModelAttribute("catchRecord") CatchRecord catchRecord, Model model) {
		return "MarineArea.jsp";
	}

	// CREATE NEW CATCH RECORD JSP
	@GetMapping("/catchrecords/new")
	public String createNewCatchRecordJSP(@ModelAttribute("catchRecord") CatchRecord catchRecord, HttpSession session,
			Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "redirect:/";
		} else {
			User userloggedin = userService.findOne(userId);
			model.addAttribute("userloggedin", userloggedin);
			List<CatchRecord> allCatchRecords = catchRecordService.allCatchRecords();
			model.addAttribute("allCatchRecords", allCatchRecords);
			return "newCatchRecord.jsp";
		}
	}

	// CREATE A NEW CATCH RECORD
	@PostMapping("/catchrecords/new/method")
	public String createCatchRecord(@Valid @ModelAttribute("catchRecord") CatchRecord catchRecord, BindingResult result,
			HttpSession session) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "redirect:/";
		} else {
			if (result.hasErrors()) {
				return "newCatchRecord.jsp";
			} else {
				catchRecordService.createCatchRecord(catchRecord);
				return "redirect:/home";
			}
		}
	}

	// SHOW --- Individual Catch Record page
	@GetMapping("/catchrecords/{id}")
	public String oneCatchRecord(@PathVariable("id") Long id, Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "redirect:/";
		} else {
			User loggedInUser = userService.findOne(userId);
			model.addAttribute("loggedInUser", loggedInUser);
			CatchRecord thisCatchRecord = catchRecordService.findCatchRecord(id);
			model.addAttribute("thisCatchRecord", thisCatchRecord);
			return "oneCatchRecord.jsp";
		}
	}

	// RENDER EDIT ONE CATCH RECORD PAGE
	@GetMapping("/catchrecords/{id}/edit")
	public String editSingleCatchRecord(@PathVariable("id") Long id, Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "redirect:/";
		} else {
			CatchRecord catchRecord = catchRecordService.findCatchRecord(id);
			if (userId.equals(catchRecord.getCatchrecordowner().getId())) {
				model.addAttribute("catchRecord", catchRecord);
				List<CatchRecord> allCatchRecords = catchRecordService.allCatchRecords();
				model.addAttribute("allCatchRecords", allCatchRecords);
				return "editCatchRecord.jsp";
			}
			return "redirect:/home";
		}
	}

	// Update the Catch Record entry - method
	@PutMapping("/catchrecords/{id}/method")
	public String updateCatchRecord(@Valid @ModelAttribute("catchRecord") CatchRecord catchRecord, BindingResult result,
			Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "redirect:/";
		} else if (result.hasErrors()) {
			return "editCatchRecord.jsp";
		} else {
			catchRecordService.updateCatchRecord(catchRecord);
			User loggedInUser = userService.findOne(userId);
			model.addAttribute("loggedInUser", loggedInUser);
			return "redirect:/home";
		}
	}

	// REMOVE CATCH RECORD OWNER
	@PostMapping("/remove/{id}")
	public String removeFromUser(@PathVariable("id") Long catchRecordId, HttpSession session) {
		// find the catch record
		CatchRecord removeThisCatchRecord = catchRecordService.findCatchRecord(catchRecordId);

		// find the user
		Long userId = (Long) session.getAttribute("user_id");
		User user = userService.findOne(userId);

		// remove the user from the catch record - in accordance with the c:if this will
		// make it disappear but still remain in the database under no user.
		removeThisCatchRecord.setCatchrecordowner(null);
		catchRecordService.updateCatchRecord(removeThisCatchRecord);

//		user.getCatchrecords().remove(removeThisCatchRecord);
//		userService.update(user);
		return "redirect:/home";
	}

	// DELETE an entire catch record
	@DeleteMapping("/catchrecords/{id}/method")
	public String delete(@PathVariable("id") Long id, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		CatchRecord catchRecord = catchRecordService.findCatchRecord(id);
		model.addAttribute("catchRecord", catchRecord);
		if (userId == null) {
			return "redirect:/";
		} else {
			catchRecordService.deleteCatchRecord(id);
			return "redirect:/home";
		}
	}

}