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
 git clone https://github.com/tu-usuario/karate-api-testing.git
 cd karate-api-testing
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

QA Automation Project – API Booking with Karate
----------------------------------------------------------
Description
----------------------------------------------------------
This project is part of the QA Automation Training Program, where we explore tools and techniques for automated API testing. We use Karate and Cucumber to validate the endpoints of a booking system (Booking API), ensuring its correct functionality through functional and integration tests.

Technologies
----------------------------------------------------------
Karate: API testing framework
Java: Base language for test execution
Maven: Dependency management and test execution
JUnit: Test runner
Cucumber Reports: Automatic report generation

Project Structure
----------------------------------------------------------
src-test-java/
bookings/                     # Main test folder  
createBooking/                 # Booking creation tests  
getBooking/                    # Booking retrieval tests  
updateBooking/                 # Booking update tests  
deleteBooking/                 # Booking deletion tests  
auth/                          # Authentication token generation  
target/                        # Reports and test results  
pom.xml                        # Maven configuration  
README.md                      # Project documentation  

Installation and Setup
----------------------------------------------------------
1 Clone the repository
git clone https://github.com/your-username/karate-api-testing.git
cd karate-api-testing

2️ Install dependencies
Ensure Java and Maven are installed. Then, run:
mvn clean install

3️ Run tests from the console
On Windows (CMD or PowerShell):
mvn test
On Mac/Linux (Terminal):
mvn test

Test Scenarios
----------------------------------------------------------
The project covers the following scenarios:
✔ Booking creation (POST /booking)
✔ Booking retrieval (GET /booking/{id})
✔ Booking update (PUT /booking/{id})
✔ Booking deletion (DELETE /booking/{id})
✔ Authentication with token

Test Reports
----------------------------------------------------------
Test reports are automatically generated using Cucumber in HTML and JSON formats within the target/cucumber-reports folder.

To view reports on Windows
Open the file explorer and navigate to the project folder.
Go to target/cucumber-reports/ and open cucumber-html-reports.html in a browser.
To view reports on Mac/Linux
From the terminal, run:
open target/cucumber-reports/cucumber-html-reports.html
If you want to regenerate the report manually, execute:
mvn surefire-report:report
