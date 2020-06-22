# angular-docker-example
Angular application example to host in docker container.

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 9.1.7.

## Prerequisite
This project requires following applications installed on your system -
- Node (https://nodejs.org/en/download/)
- Docker Desktop (https://www.docker.com/products/docker-desktop)
- Angular-CLI (https://cli.angular.io/)

## Initial Setup
Run `npm install`

### Important Note (Windows Users Only)
This project uses docker volume mounting for development build, so if you are running this in Windows Machine please provide access to your project.
- [One Time] Here is the guide to share folder to Docker instance - (https://docs.microsoft.com/en-in/archive/blogs/stevelasker/configuring-docker-for-windows-volumes)

Every time you open command prompt you have to run this script to set environment variables before you execute commands further -
`.\win_setup.ps1`

## Running on Docker Container with Hot-Reload (For Development)
This can be used to run the application on local docker container while development.

### Building Docker Container with Hot-Reload
Requires first time and only when you add/remove any node dependency.

`npm run docker-run`

Navigate to `http://localhost:4201/`. The app will automatically reload if you change any of the source files.

To stop the container run `npm run docker-stop`.

*Note -* This command will take longer time on first run as this will download all dependent docker images & and create a new container for the app.

### Running on Docker Container quickly with Hot-Reload
This can be used for any subsequent run of the container.

`npm run docker-run-quick`

Navigate to `http://localhost:4201/`. The app will automatically reload if you change any of the source files.

To stop the container run `npm run docker-stop`.

## Building Docker Container (For Production)

RUN `npm run docker-build`

Navigate to `http://localhost:8000/`.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Further help for Angular CLI

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
