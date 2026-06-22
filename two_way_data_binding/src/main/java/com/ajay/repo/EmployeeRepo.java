package com.ajay.repo;

import org.springframework.data.repository.CrudRepository;

import com.ajay.entity.Employee;

public interface EmployeeRepo extends CrudRepository<Employee, Integer>{

}
