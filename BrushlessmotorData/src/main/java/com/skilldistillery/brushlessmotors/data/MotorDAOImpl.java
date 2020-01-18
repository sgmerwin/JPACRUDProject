package com.skilldistillery.brushlessmotors.data;

import java.util.List;

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
	
	public List<Brushlessmotor> findAll(){
		String jpql ="select m from Brushlessmotor m";
		List<Brushlessmotor> motors = em.createQuery(jpql, Brushlessmotor.class)
		.getResultList();
		//em.close();
		return motors;
	}
	

	public void update(int id, String name, Integer current, Integer volt, Integer price, Integer weight, Integer rpm, Double force) {
		String jpql = "select m from Brushlessmotor m where m.id = :bindID";
		List<Brushlessmotor> motor = em.createQuery(jpql, Brushlessmotor.class)
		.setParameter("bindID", id)
		.getResultList();
		if(motor != null) {
		//em.getTransaction().begin();
		for(Brushlessmotor m : motor) {
			Brushlessmotor managed = em.find(Brushlessmotor.class, id);
			managed.setCurrent(current);
			managed.setVoltage(volt);
			managed.setPrice(price);
			managed.setWeight(weight);
			managed.setRpm(rpm);
			managed.setForce(force);
			managed.setName(name);
		}//for
		//em.flush();
		//em.getTransaction().commit();
		//em.close();
		}//if
	}//method
	
	public Brushlessmotor create(String name) {
		Brushlessmotor motor = new Brushlessmotor();
		motor.setName(name);
		//em.getTransaction().begin();
		em.persist(motor);
		//em.flush();
		//em.getTransaction().commit();
		//em.close();
		return motor;
	}
	
	public boolean delete(int id) {
		Brushlessmotor managed = em.find(Brushlessmotor.class, id);
		//em.getTransaction().begin();
		em.remove(managed);
		//em.flush();
		//em.getTransaction().commit();
		boolean status = !em.contains(managed);
		//em.close();
		return status;
	}

	
		
	}
	

	

