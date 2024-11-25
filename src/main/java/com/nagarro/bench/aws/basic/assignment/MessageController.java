package com.nagarro.bench.aws.basic.assignment;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/message")
public class MessageController {
	
	@GetMapping
	public String sendMessage() {
		return "Spring boot is up and running";
	}

}
