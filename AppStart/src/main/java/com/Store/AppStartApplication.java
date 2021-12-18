package com.Store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AppStartApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppStartApplication.class, args);
		/*
		 * String pattern = "yyyy-MM-dd HH:mm:ss"; DateFormat df = new
		 * SimpleDateFormat(pattern); Date today = Calendar.getInstance().getTime();
		 * String todayAsString = df.format(today); System.out.println(todayAsString);
		 */
	}
}
