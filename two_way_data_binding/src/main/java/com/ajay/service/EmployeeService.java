package com.ajay.service;


import java.util.Optional;

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
	
	public String deleteEmpById(int id) {
		Optional<Employee> optional = empRepo.findById(id);
		
		if(optional.isPresent()) {
			Employee employee = optional.get();
			empRepo.deleteById(employee.getId());
			return "Employee is deleted with id: "+employee.getId();
		}else {
			return "Employee Not Found";
		}
	}
}
