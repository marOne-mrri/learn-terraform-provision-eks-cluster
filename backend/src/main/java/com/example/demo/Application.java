package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Map;

@SpringBootApplication
@RestController
public class Application {

	@GetMapping("/")
	public Map<String, String> home() {
		return Map.of("message", "hello from backend");
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}
