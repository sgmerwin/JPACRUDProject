package com.skilldistillery.brushlessmotors.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.brushlessmotors.entities.Brushlessmotor;

@Service
@Transactional
public class MotorDAOImpl implements MotorDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	public Brushlessmotor findById(int id) {
		// TODO Auto-generated method stub
		return em.find(Brushlessmotor.class, id);
	}

	
}
