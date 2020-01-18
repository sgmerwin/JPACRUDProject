package com.skilldistillery.brushlessmotors.data;

import java.util.List;

import com.skilldistillery.brushlessmotors.entities.Brushlessmotor;

public interface MotorDAO {
	
	Brushlessmotor findById(int id);
	
	List<Brushlessmotor> findAll();
	
	void update(int id, String name, int current, int volt, int price, int weight, int rpm, double force);
	
	void create(String name);
	
	boolean delete(int id);

}
