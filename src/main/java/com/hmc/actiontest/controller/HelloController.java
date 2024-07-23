package com.hmc.actiontest.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Time;

@RestController
public class HelloController {

  @RequestMapping("/hello")
  public String hello() {
    return "Hello, World!";
  }

  @RequestMapping("/time")
  public long time() {
    return System.currentTimeMillis();
  }
}
