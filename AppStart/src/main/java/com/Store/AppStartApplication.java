package com.Store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AppStartApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppStartApplication.class, args);
		/* System.out.println(new BCryptPasswordEncoder().encode("2")); */
	}
}
