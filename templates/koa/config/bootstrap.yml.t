server:
  port: 8080

spring:
  application:
    name: ${projectName}
  profiles:
    active: dev

---
spring:
  profiles: dev