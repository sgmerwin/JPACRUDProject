package com.skilldistillery.burshlessmotors.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import com.skilldistillery.brushlessmotors.entities.Brushlessmotor;

class BrushlessmotorTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Brushlessmotor brushlessmotor;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Brushlessmotors");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		brushlessmotor = em.find(Brushlessmotor.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		brushlessmotor = null;
	}

	@Disabled
	@Test
	void test_brushlessmotor_entity_mapping() {
		assertNotNull(brushlessmotor);
		assertEquals("Dobby", brushlessmotor.getName());
	}

}
