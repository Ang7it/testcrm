package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.demo.utility.FileStorageProperties;

@SpringBootApplication
@EnableConfigurationProperties({
    FileStorageProperties.class
})
public class TesteMailCrmApplication {

	public static void main(String[] args) {
		SpringApplication.run(TesteMailCrmApplication.class, args);
	}

}
