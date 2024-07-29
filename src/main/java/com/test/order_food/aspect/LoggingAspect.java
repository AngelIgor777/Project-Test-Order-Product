package com.test.order_food.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
@Component
public class LoggingAspect {

    private static final Logger logger = LoggerFactory.getLogger(LoggingAspect.class);

    @Pointcut("execution(* com.test.order_food.controllers.MainController.registerAccount(..))")
    public void registerAccountMethod() {}

    @Before("registerAccountMethod()")
    public void logBefore(JoinPoint joinPoint) {
        logger.info("Attempting to register user with arguments: {}", joinPoint.getArgs());
    }

    @AfterReturning(pointcut = "registerAccountMethod()", returning = "result")
    public void logAfterReturning(JoinPoint joinPoint, Object result) {
        logger.info("User registered successfully. Result: {}", result);
    }

    @AfterThrowing(pointcut = "registerAccountMethod()", throwing = "error")
    public void logAfterThrowing(JoinPoint joinPoint, Throwable error) {
        logger.error("Error occurred while registering user: {}", error.getMessage());
    }
}
