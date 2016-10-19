package com;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class Application extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(
            SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }


    /**
     *  可以使用main直接启动
     *  需要直接启动的，请到pom.xml中，删除
     *
     *  <dependency>
     *  <groupId>org.springframework.boot</groupId>
     *  <artifactId>spring-boot-starter-tomcat</artifactId>
     *  <scope>provided</scope>
     *  </dependency>
     *
     *  这一段
     *
     *
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}