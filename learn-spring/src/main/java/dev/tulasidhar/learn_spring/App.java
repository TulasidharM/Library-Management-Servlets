package dev.tulasidhar.learn_spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext context = new AnnotationConfigApplicationContext(HumanConfig.class);
        Human human = context.getBean("humanBean",Human.class);
        human.speak();
    }
}


