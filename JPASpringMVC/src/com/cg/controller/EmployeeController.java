package com.cg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cg.entities.Employee;
import com.cg.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/index.obj")
	public String getHomePage(Model model){
		model.addAttribute("empList",employeeService.loadAll());
		model.addAttribute("designations",new String[]{"System Associate","Asst Manager","Dy Manager","Manager"});
		model.addAttribute("employee",new Employee());
		return "index";
	}
	
	@RequestMapping(value="/save.obj",method=RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee, Model model){
		employee =  employeeService.save(employee);
		model.addAttribute("message","Employee with id "+employee.getEmployeeId()+" added successfully!");
		return "redirect:/index.obj";
	}
	
	
}
