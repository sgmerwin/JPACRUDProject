package com.skilldistillery.brushlessmotors.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MotorController {
	
	@RequestMapping(path="/")
	public String index(Model model) {
	return "WEB-INF/index.jsp";
	}
	
	

}
