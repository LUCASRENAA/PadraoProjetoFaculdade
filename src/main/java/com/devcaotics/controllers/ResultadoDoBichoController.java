package com.devcaotics.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devcaotics.model.entities.ResultadoDoBicho;
import com.devcaotics.model.repository.Facade;

@Controller
public class ResultadoDoBichoController {
	@RequestMapping("/sorteio")
	public String index(Model m) {
		List<ResultadoDoBicho> resultados = Facade.getCurrentInstance().readAll();
		
		m.addAttribute("resultados",resultados);
		return "resultado/resultado";
		
	}
	
	@RequestMapping("/index")
	public String index20(Model m) {
		List<ResultadoDoBicho> resultados = Facade.getCurrentInstance().readAll();
		
		m.addAttribute("resultados",resultados);
		return "resultado/ultimoresultado";
		
	}
	
	
	
	@RequestMapping("/home")
	public String index2(Model m) {
		List<ResultadoDoBicho> resultados = Facade.getCurrentInstance().readAll();
		
		m.addAttribute("resultados",resultados);
		return "resultado/home";
		
	}
	
	
	

	
	@RequestMapping("/bixo/cadastro")
	public String cadastro(Model m, ResultadoDoBicho c) {
		
		Facade.getCurrentInstance().create(c);
				
		return "resultado/resultado";
		
	}
	

	

}
