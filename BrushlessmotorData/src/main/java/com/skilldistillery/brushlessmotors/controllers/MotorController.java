package com.skilldistillery.brushlessmotors.controllers;

import java.util.ArrayList;
import java.util.List;

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
	
	@RequestMapping(path="listMotor.do")
	public String showMotor(Model model) {
	List<Brushlessmotor> motors = new ArrayList<Brushlessmotor>(); 
	motors = dao.findAll();
	model.addAttribute("motors", motors);
	return "WEB-INF/list.jsp";
	}
	
	@RequestMapping(path="updateMotor.do")
	public String updateMotor(@RequestParam Integer mid, Model model) {
	Brushlessmotor motor = null;
	motor = dao.findById(mid);
	model.addAttribute("motor", motor);
	return "WEB-INF/update.jsp";
	}
	
	@RequestMapping(path="getHome.do")
	public String home() {
	return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path="editMotor.do")
	public String editMotor(@RequestParam int mid, String name, Integer current, Integer voltage, Integer price, Integer weight, Integer rpm, Double force, Model model) {
	dao.update(mid, name, current, voltage, price, weight, rpm, force);
	Brushlessmotor updateMotor = dao.findById(mid);
	model.addAttribute("motor", updateMotor);
	return "WEB-INF/update.jsp";
	}
	
	@RequestMapping(path="createMotor.do")
	public String createMotor(@RequestParam String name, Model model) {
	Brushlessmotor motor = null;	
	motor = dao.create(name);
	model.addAttribute("motor", motor);
	return "WEB-INF/update.jsp";
	}
	
	@RequestMapping(path="deleteMotor.do")
	public String deleteMotor(@RequestParam Integer mid, Model model) {
	Brushlessmotor motor = null;
	motor = dao.findById(mid);
	model.addAttribute("motor", motor);
	return "WEB-INF/delete.jsp";
	}
	
	@RequestMapping(path="destroyMotor.do")
	public String deleteMotor(@RequestParam Integer mid) {
	dao.delete(mid);
	return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path="editShowMotor.do")
	public String createMotor(@RequestParam Integer mid) {
	return "WEB-INF/update.jsp";
	}
	
	
	

}
