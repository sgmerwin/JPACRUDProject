package com.skilldistillery.brushlessmotors.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.brushlessmotors.data.MotorDAO;
import com.skilldistillery.brushlessmotors.entities.Brushlessmotor;

@Controller
public class MotorController {
	
	@Autowired
	private MotorDAO dao;
	
	@RequestMapping(path="/")
	public String index(Model model) {
	return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path="getMotor.do")
	public String showMotor(@RequestParam Integer mid, Model model) {
	Brushlessmotor motor = null;
	motor = dao.findById(mid);
	model.addAttribute("motor", motor);
		return "WEB-INF/show.jsp";
	}
	
	

}
