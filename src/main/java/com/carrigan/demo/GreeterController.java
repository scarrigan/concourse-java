package com.carrigan.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreeterController {

    @RequestMapping("/greet")
    public String greet() {
        return "Hello there!";
    }

}
