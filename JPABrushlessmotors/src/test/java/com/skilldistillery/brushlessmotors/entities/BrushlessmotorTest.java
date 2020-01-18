package com.skilldistillery.brushlessmotors.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class BrushlessmotorTest {
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("Brushlessmotor");
	private EntityManager em;
	private Brushlessmotor motor;
	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		motor = em.find(Brushlessmotor.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}
	
	@Test
	@DisplayName("test motor mapping")
	void test1() {
		assertEquals("Tarot 4008 330kv", motor.getName());
		assertEquals(25, motor.getCurrent());
		assertEquals(24, motor.getVoltage());
		assertEquals(32, motor.getPrice());
		assertEquals(80, motor.getWeight());
		assertEquals(7920, motor.getRpm());
		assertEquals(65.61, motor.getForce());
	}

}
