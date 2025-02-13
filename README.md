Proyecto de Automatización QA – API Booking con Karate
----------------------------------------------------------
Descripción
----------------------------------------------------------
Este proyecto forma parte del Semillero de Automatización QA, donde exploramos herramientas y técnicas de pruebas automatizadas para APIs. Utilizamos Karate y Cucumber para validar los endpoints de un sistema de reservas (Booking API), asegurando su correcto funcionamiento mediante pruebas funcionales y de integración.

Tecnologías
----------------------------------------------------------
 Karate: Framework para pruebas de API
 Java: Lenguaje base para la ejecución de pruebas
 Maven: Gestión de dependencias y ejecución de pruebas
 JUnit: Ejecutor de pruebas
 Cucumber Reports: Generación automática de reportes

Estructura del Proyecto
----------------------------------------------------------
src-test-java/
 bookings/                     # Carpeta principal de pruebas
  createBooking/               # Pruebas de creación de reservas
  getBooking/                  # Pruebas de consulta de reservas
  updateBooking/               # Pruebas de modificación de reservas
  deleteBooking/               # Pruebas de eliminación de reservas
  auth/                        # Generación de token de autenticación
  features/                    # Archivos .feature con los escenarios de prueba
target/                        # Reportes y resultados de pruebas
pom.xml                        # Configuración de Maven
README.md                      # Documentación del proyecto

Instalación y Configuración
----------------------------------------------------------
Clonar el repositorio
 git clone https://github.com/tu-usuario/karate-booking-tests.git
 cd karate-booking-tests
Instalar dependencias
Asegúrate de tener Java y Maven instalados. Luego, ejecuta:
 mvn clean install
Ejecutar pruebas desde la consola
 En Windows (CMD o PowerShell):
 mvn test
En Mac/Linux (Terminal):
 mvn test

Escenarios de Prueba
----------------------------------------------------------
El proyecto cubre los siguientes escenarios:
✔ Creación de reservas (POST /booking)
✔ Consulta de reservas (GET /booking/{id})
✔ Modificación de reservas (PUT /booking/{id})
✔ Eliminación de reservas (DELETE /booking/{id})
✔ Autenticación con token

Reportes de Pruebas
----------------------------------------------------------
Los reportes de pruebas se generan automáticamente con Cucumber en formato HTML y JSON dentro de la carpeta target/cucumber-reports.

Para visualizar los reportes en Windows
Abre el explorador de archivos y navega hasta la carpeta del proyecto.
Ingresa a target/cucumber-reports/ y abre cucumber-html-reports.html en un navegador.
Para visualizar los reportes en Mac/Linux
Desde la terminal, ejecuta:
open target/cucumber-reports/cucumber-html-reports.html
Si deseas regenerar el reporte manual.
