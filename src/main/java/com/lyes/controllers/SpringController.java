package com.lyes.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lyes.model.User;

@Controller
public class SpringController {

	@RequestMapping("/")
	public String home() {
		System.out.println("Going home ...");
		return "index";
	}
	
	@GetMapping("/register_form")
	public String registerForm(Model model) {
		User user = new User();
		model.addAttribute("user",user);
		return "register";
	}
	
	@PostMapping("/register")
	public void register(@ModelAttribute("usre") User user) {
		System.out.println(user.toString());
	}
}
