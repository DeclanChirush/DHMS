package com.dhms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
//@ComponentScan(basePackages = {"com.dhms.controller"})
public class DhmsApplication {

	public static void main(String[] args) {
		SpringApplication.run(DhmsApplication.class, args);
	}

}
