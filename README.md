# karate-api project ⛩️

This project is a demonstration of a basic Karate API automation framework that uses Maven as the build automation tool. The purpose of this framework is to simplify automated API testing of web applications.

## How to run
To get started with this project, follow the steps below:

1. Clone the repository to your local machine
2. Run the entire test suite using Maven:
 ```
 mvn clean test
 ```
3. To run a specific test, you can use the tags defined in the feature files. For example, if you want to run a test tagged as **@create_pet**, you can use the following command:
```
mvn clean test "-Dkarate.options=--tags @create_pet"
```
Replace **@create_pet** with the desired tag for the specific test you want to run.


### 📚 Karate Report
This project uses the Karate Report to generate an interactive report that provides information about the test results. 
After running the tests, the report is generated in the **/target/karate-reports** directory.
