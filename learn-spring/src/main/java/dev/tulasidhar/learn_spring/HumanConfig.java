package dev.tulasidhar.learn_spring;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class HumanConfig {

	@Bean
	public Human humanBean() {
		return new Human();
	}
}
