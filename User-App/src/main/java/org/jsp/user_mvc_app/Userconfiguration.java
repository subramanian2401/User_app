package org.jsp.user_mvc_app;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "org.jsp.user_mvc_app")
public class Userconfiguration {
	
	@Bean
	public EntityManager getManager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}

}
