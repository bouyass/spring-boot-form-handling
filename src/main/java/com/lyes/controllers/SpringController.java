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
	
	private List<User> users = new ArrayList<User>();
	List<String> professions = new ArrayList<String>();

	
	@RequestMapping("/")
	public String home(Model model) {
		System.out.println("Going home ...");
		model.addAttribute("users",users);
		return "index";
	}
	
	@GetMapping("/register_form")
	public String registerForm(Model model) {
		User user = new User();
		model.addAttribute("user",user);
		professions.add("Education");
		professions.add("Artisant");
		professions.add("Commerçant");
		model.addAttribute("professionList",professions);
		return "register";
	}
	
	@PostMapping("/register")
	public String register(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("user",user);
		return "confirmation";
	}
	
	@RequestMapping("/correction_form")
	public String correction(User user, Model model) {
		model.addAttribute("user",user);
		professions.add("Education");
		professions.add("Artisant");
		professions.add("Commerçant");
		model.addAttribute("professionList",professions);
		return "register";
	}
	
	@RequestMapping("confirm_register")
	public String confirmRegistration(User user, Model model) {
		users.add(user);
		System.out.println("confirm "+user.getName()+" , "+user.getEmail());
		model.addAttribute("name",user.getName());
		model.addAttribute("email",user.getEmail());
		return "succes";
	}
}
