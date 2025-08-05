[![Build Status](https://dev.azure.com/ns-topaas/FUNDOJO/_apis/build/status%2F{{projectName}}?branchName=main)](https://dev.azure.com/ns-topaas/FUNDOJO/_build/latest?definitionId={{pipelineID}}&branchName=main)

# {{projectName}}
My standard template for Swift projects including executable, tests, linting and CI

## The template includes:
- A basic Swift package structure with an executable target and a test target
- A Dockerfile for building and running the application in a container
- A basic Azure Pipelines configuration for building and testing the application
- A basic README file with instructions for building and running the application
- Scaffolds for documenting progress, tech debt and features
- A basic `.gitignore` file for Swift projects

### Assumptions
- The project makes not assumption about the intended target. I.e. its a 'vanilla' Swift project. If you create an API or something else, you'll need to add the required dependencies and configuration.
- Therefore it also does not contain smoke tests or other tests that make an assumption about the intended application type. Add these yourself.
- The included Dockerfile already contains the necessary steps to build and run a Vapor application. So no additional steps are needed to run a Vapor based application or API in a container.

## Usage
The template is designed to be used by the CookieCutter2000 CLI tool. Or any other tool that is able to replace the placeholders in the template files with the actual values:
- `{{projectName}}`: The name of the project
- `{{lowerCasedProjectName}}`: The name of the project in lower case,
- Placeholders in directory names do no contain `{{}}`. For example, assuming the project is called `Project3000`:
    - `Sources/projectName` should be renamed to `Sources/Project3000`
    - `Tests/projectNameTests` should be renamed to `Tests/Project3000Tests`
    - etc 

## Build & Run
### Local build
- Run the tests: `# swift test` 

- Run the app: `# swift run`

### Docker build
- Build the Docker image: `# docker build -t {{lowerCasedProjectName}} .`

- Run the Docker image: 
    - `# docker run -d --name {{projectName}} {{lowerCasedProjectName}}` 
    - `# docker run -d --name {{projectName}} -p 8080:8080 {{lowerCasedProjectName}}` (if the app exposes a network port)