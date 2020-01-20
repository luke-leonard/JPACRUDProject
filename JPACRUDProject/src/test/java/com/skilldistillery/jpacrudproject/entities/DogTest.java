package com.skilldistillery.jpacrudproject.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class DogTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Dog dog;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	    emf = Persistence.createEntityManagerFactory("JPACRUDProject");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		dog = em.find(Dog.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		dog = null;
		em.close();
	}
	
	@DisplayName("Testing Customer Entity Mapping")
	@Test
	public void test1() {
		assertEquals("Spots",dog.getName());
	}
}
