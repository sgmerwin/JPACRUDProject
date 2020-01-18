package com.skilldistillery.brushlessmotors.data;

import java.util.List;

import com.skilldistillery.brushlessmotors.entities.Brushlessmotor;

public interface MotorDAO {
	
	Brushlessmotor findById(int id);
	
	List<Brushlessmotor> findAll();
	
	void update(int id, String name, Integer current, Integer volt, Integer price, Integer weight, Integer rpm, Double force);
	
	Brushlessmotor create(String name);
	
	boolean delete(int id);

}
