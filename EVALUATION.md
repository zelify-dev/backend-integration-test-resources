# Caso de uso: Desarrollo e Integración de Microservicios en una entidad financiera

## Contexto
Imagina que te encuentras trabajando en una entidad financiera, desempeñando el rol de un profesional especializado en integración. Tu tarea consiste en crear un microservicio que exponga dos endpoints para recibir notificaciones del estado de transacciones bancarias pendientes y que esta información sea almacenada en una base de datos relacional.

Estas transacciones pueden tener dos estados (completada y fallida) y cada transacción tiene relacionado un identificador de proceso y el número de cuenta, además, existe una entidad externa que provee los servicios para emitir las notificaciones de las transacciones.

## Descripción del reto técnico

1. Se debe desarrollar el microservicio que expone los endpoints para almacenar la información de las transacciones pendientes en Node.js v18 y empleando GraphQL para un endpoint de consulta personalizada de transacciones. Se debe realizar la conexión de este microservicio con una base de datos PostgreSQL.

2. Se debe desarrollar el microservicio del proveedor externo que va a recibir las notificaciones de las transacciones por una cola y posteriormente enviará una petición REST hacia el microservicio desarrollado en el punto (1).

La cola que va a emitir las notificaciones será entregada con un worker que emitirá mensajes aleatorios y de forma randómica. Este worker y cola estarán configurados en el docker-compose que el equipo técnico proveerá al candidato como un referencia para que pueda sobre eso corregir lo que sea necesario. El candidato podría crear por si mismo un docker-compose con los servicios de igual forma en caso de que no quisiera utilizar el docker-compose brindado.

**Requerimientos obligatorios:**


1. Microservicio de respuesta de transacciones:
   - Desarrollado en Node.js v18.
   - Conexión a PostgreSQL.
   - Dockerización del servicio.
   - Implementación de Principios SOLID.
   - Exponer un servicio de consulta de transacciones utilizando GraphQL.

2. Microservicio de integración (que simula el proveedor externo):
   - Desarrollado en Java con Spring Boot.
   - Conexión a Kafka.
   - Implementación de Principios SOLID.
   - Dockerización del servicio.
   - Uso de Docker Compose para facilitar los servicios.

3. Entregables:
  - Repositorio en GitHub que contenga el código fuente de ambos microservicios.
  - Colección de solicitudes Postman para evaluar la funcionalidad de los servicios (se dará valor a la adopción del diseño API First).

**Opcionales:**
- Desarrollo de una API que publique eventos en un tópico de Kafka.
- Implementación de pruebas unitarias y funcionales.
- Utilización de patrones de diseño y arquitectura.
- Documentación mediante Open API con Swagger.

## Consideraciones Finales

Se espera que los microservicios sean entregados en un estado funcional y que cumplan con los estándares de calidad especificados. Además, se valorará la implementación de funcionalidades opcionales y las buenas prácticas recomendadas en el desarrollo de software.

## Restricciones

Es posible abrir la documentación de cada tecnología y utilizar Google para solucionar problemas técnicos, más no para consultar código.
Queda prohibido utilizar cualquier ChatGPT, GitHub Copilot o cualquier otro software de IA para developers que facilite la creación de código.
