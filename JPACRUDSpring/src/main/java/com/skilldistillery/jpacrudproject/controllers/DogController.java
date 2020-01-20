package com.skilldistillery.jpacrudproject.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrudproject.data.DogDAO;
import com.skilldistillery.jpacrudproject.entities.Dog;

@Controller
public class DogController {

	@Autowired
	private DogDAO dao;
	
	@RequestMapping(path="/")
	public String index() {
	  return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path = "getDog.do")
	public String showDog(@RequestParam Integer id, Model model) {
		Dog dog = dao.get(id);
		if(dog == null) {
			String message = "No Dog Found";
			model.addAttribute("message", message);
			return "WEB-INF/Dog/message.jsp";
		}
		model.addAttribute("dog", dog);
		return "WEB-INF/Dog/dog.jsp";
	}
	@RequestMapping(path = "newDog.do")
	public String newDog(Dog dog, Model model) {
		dao.insert(dog);
		model.addAttribute("dog", dog);
		return "WEB-INF/Dog/dog.jsp";
	}
	@RequestMapping(path = "editDogPage.do")
	public String editDogPage(@RequestParam Integer id, Model model) {
		Dog dog = dao.get(id);
		model.addAttribute("dog", dog);
		return "WEB-INF/Dog/editDog.jsp";
	}
	@RequestMapping(path = "editDog.do")
	public String editDog(Dog dog, Model model) {
		dao.update(dog);
		model.addAttribute("dog", dog);
		return "WEB-INF/Dog/dog.jsp";
	}
	@RequestMapping(path = "deleteDog.do")
	public String deleteDog(@RequestParam Integer id, Model model) {
		Dog dog = dao.get(id);
		dao.delete(dog);
		String message = "Dog Deleted";
		model.addAttribute("message", message);
		return "WEB-INF/Dog/message.jsp";
	}

}
