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
