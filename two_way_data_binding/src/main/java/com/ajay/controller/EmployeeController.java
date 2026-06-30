package com.ajay.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ajay.entity.Employee;
import com.ajay.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService empService;
	
	@GetMapping("/home")
	public String linkk() {
		System.out.println("welcome");
		return "wellcome";
	}
	
	@GetMapping("/register")
	public String showData(@ModelAttribute("employee") Employee emp){
		return "show_form";
	}
	
	@GetMapping("/emp_data")
	public String getData(@ModelAttribute("employee") Employee emp, Map<String, List<Employee>> map) {
		Iterable<Employee> empData = empService.getEmpData();
		List<Employee> list = new ArrayList<>();
		for(Employee empl:empData) {
			list.add(empl);
		}
		map.put("empList",list);
		return "list_emp";
	}
	
	@PostMapping("/register") // PRG pattern to avoid the form submission duplication
	public String saveData(@ModelAttribute("employee") Employee emp, Map<String,String> map) {
		String email = emp.getEmail();
		String pwd = emp.getPwd();
		String role = emp.getRole();
		new Employee(email,pwd,role);
		String msgWithId = empService.saveEmp(emp);
		map.put("msg", msgWithId);
		return "result";
	}

	@GetMapping("/delete")
	public String deleteEmp(@RequestParam("id") int id, Map<String, String> map) {
		String delMsg = empService.deleteEmpById(id);
		map.put("delMsg", delMsg);
		return "delete_msg";
	}
	
	@GetMapping("/update")
	public String updateEmployee(@ModelAttribute("employee") Employee emp, @RequestParam("id") int id, Map<String, String> map) {
		Optional<Employee> empl = empService.getEmpById(id);
		emp.setEmail(empl.get().getEmail());
		emp.setPwd(empl.get().getPwd());
		emp.setRole(empl.get().getRole());
		return "update";
	}
	
	@PostMapping("/update")
	public String updateEmp(@RequestParam("id") int id, @ModelAttribute("employee") Employee emp, Map<String, String> map) {
		String update = empService.updateEmpById(id,emp);
		map.put("update_msg", update);
		return "update_msg";
	}
	
}
