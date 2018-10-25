package com.example.app;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String sayHello() {
        return "Greetings from Spring Boot!";
    }

}