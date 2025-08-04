package dev.tulasidhar.learn_spring;

import org.springframework.stereotype.Component;

@Component("humanBean")
public class Human {
	public void speak() {
		System.out.println("Human says Hello!");
	}
}
