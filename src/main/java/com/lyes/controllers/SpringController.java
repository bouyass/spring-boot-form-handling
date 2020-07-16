package com.lyes.controllers;

import java.util.ArrayList;
import java.util.List;

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
		List<String> professions = new ArrayList<String>();
		professions.add("Education");
		professions.add("Commerçant");
		professions.add("Artisanat");
		model.addAttribute("user",user);
		model.addAttribute("professionList",professions);
		return "register";
	}
	
	@PostMapping("/register")
	public String register(@ModelAttribute("usre") User user, Model model) {
		model.addAttribute("user",user);
		return "succes";
	}
}
