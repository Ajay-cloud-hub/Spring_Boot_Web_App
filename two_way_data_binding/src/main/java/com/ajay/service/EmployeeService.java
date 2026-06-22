package com.ajay.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ajay.entity.Employee;
import com.ajay.repo.EmployeeRepo;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepo empRepo;
	
	public Iterable<Employee> getEmpData(){
		Iterable<Employee> iterable = empRepo.findAll();
		iterable.forEach(emp -> System.out.println("service "+emp.getEmail()));
		return empRepo.findAll();
	}
	
	public String saveEmp(Employee emp) {
		Employee employee = empRepo.save(emp);
		return "Employee is saved with id: "+employee.getId();
	}
}
