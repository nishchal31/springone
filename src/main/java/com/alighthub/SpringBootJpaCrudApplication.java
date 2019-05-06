package com.alighthub;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootJpaCrudApplication {

	public static void main(String[] args) {
		System.out.println("MAIN --- START");
		SpringApplication.run(SpringBootJpaCrudApplication.class, args);
		System.out.println("MAIN --- END");
	}

}
