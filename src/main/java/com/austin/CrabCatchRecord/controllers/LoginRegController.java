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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.austin.CrabCatchRecord.models.CatchRecord;
import com.austin.CrabCatchRecord.models.LoginUser;
import com.austin.CrabCatchRecord.models.User;
import com.austin.CrabCatchRecord.services.CatchRecordService;
import com.austin.CrabCatchRecord.services.UserService;


@Controller
public class LoginRegController {

	@Autowired
	private UserService userServ;
	
	@Autowired
	private CatchRecordService catchRecordService;

		// RENDER LOGIN and REG PAGE // This Login and Registration does not force you to go to the dashboard if you are in session - work to change this for project.
	@GetMapping("/login-and-registration-page") // this will have the login and registration form 
	public String index(Model model) {

		// Bind empty User and LoginUser objects to the JSP
		// to capture the form input
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "Index.jsp"; 
	}

		// REGISTER NEW USER //
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model,
				HttpSession session) {
//	    execute the Service to Register FIRST! 
		userServ.register(newUser, result);

		if (result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "Index.jsp"; // if you get the error of it taking you to the wrong page return the jsp vs a route 
		} else {
			session.setAttribute("user_id", newUser.getId());
			return "redirect:/home";
		}
	}

		// LOGIN USER //

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult res, Model model,
				HttpSession sesh) {
		User user = userServ.login(newLogin, res);

		if (res.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "Index.jsp";
		} else {
			sesh.setAttribute("user_id", user.getId());
			return "redirect:/home";
		}
	}

		// LOGOUT USER //
	@GetMapping("/logout")
	public String logout(HttpSession sesh) {
		sesh.invalidate();
		return "redirect:/";
	}

	// HOME ROUTE // DASHBOARD ROUTE
	@RequestMapping("/home")
	public String home(HttpSession session, Model model) {
			// retrieve the user from session
		Long userId = (Long) session.getAttribute("user_id");
			// check if userId is null
		if (userId == null) {
			return "redirect:/";
		} else {
			User thisUser = userServ.findOne(userId);
			model.addAttribute("thisUser", thisUser);
			List<CatchRecord>allCatchRecords = catchRecordService.allCatchRecords();
			model.addAttribute("allCatchRecords", allCatchRecords);
			return "Home.jsp";
		}
	}
}
