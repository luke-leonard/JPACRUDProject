package com.skilldistillery.jpacrudproject.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrudproject.entities.Dog;

@Service
@Transactional
public class DogDAOJpaImpl implements DogDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Dog get(int id) {
		return em.find(Dog.class, id);
	}

	@Override
	public Dog insert(Dog dog) {
		em.persist(dog);
		em.flush();
		return dog;
	}

	@Override
	public Dog update(Dog dog) {
		Dog managedDog = em.find(Dog.class, dog.getId());
		
		managedDog.setName(dog.getName()); 
		managedDog.setBreed(dog.getBreed()); 
		managedDog.setDob(dog.getDob()); 
		managedDog.setDescription(dog.getDescription()); 

		em.flush();
		return managedDog;
	}

	@Override
	public Dog delete(Dog dog) {
		Dog managedDog = em.find(Dog.class, dog.getId());
		em.remove(managedDog);
		em.flush();
		dog.setId(0);
		return dog;
	}
}
