package com.skilldistillery.jpacrudproject.data;

import java.util.List;

import com.skilldistillery.jpacrudproject.entities.Dog;

public interface DogDAO {
	Dog get(int id);
	Dog insert(Dog dog);
	Dog update(Dog dog);
	Dog delete(Dog dog);
}
