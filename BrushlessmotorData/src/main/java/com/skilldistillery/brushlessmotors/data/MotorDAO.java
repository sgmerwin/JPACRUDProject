package com.skilldistillery.brushlessmotors.data;

import com.skilldistillery.brushlessmotors.entities.Brushlessmotor;

public interface MotorDAO {
	
	Brushlessmotor findById(int id);

}
