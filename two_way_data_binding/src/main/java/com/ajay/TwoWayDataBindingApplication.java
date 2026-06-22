package com.ajay;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

//@Configuration
//@EnableAutoConfiguration
//@ComponentScan({"com.ajay","com.ajay.entity","com.ajay.controller","com.ajay.service","com.ajay.repo"})
@SpringBootApplication
@EnableJpaRepositories("com.ajay.repo")
public class TwoWayDataBindingApplication {

	public static void main(String[] args) {
		ApplicationContext ac = SpringApplication.run(TwoWayDataBindingApplication.class, args);
//		EmployeeController bean = ac.getBean("employeeController",EmployeeController.class);
//		List<Employee> data = bean.getData();
//		data.forEach(emp -> System.out.println("main "+emp.getEmail()));
	}

}
