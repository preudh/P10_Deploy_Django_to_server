# OC Project 10: creating a Continuous Integration/Continuous Deployment (CI/CD) pipeline

This project is part of the OC Python developer course. The Pur Beurre startup, for which you have already worked, 
decides to set up a web application that allows customers to find healthy alternatives (better nutriscore) using the
[OpenFoodFacts](https://fr.openfoodfacts.org/) data. The application is built using the Django web framework and 
postgreSQL database. The application is deployed on a DigitalOcean Droplet.

## Introduction

This guide outlines the process of creating a Continuous Integration/Continuous Deployment (CI/CD) pipeline for a
project using PyCharm Pro, GitHub Actions, Docker, Docker Compose, and DigitalOcean. The goal is to streamline the
continuous deployment of the application while ensuring its reliability and security. GitHub Actions is chosen as
the CI/CD tool for its native integration with GitHub.

### Configuration Overview

1. **Local Development Environment and Version Control**:
   
   - PyCharm Pro is chosen as the development environment.
   - Git is used for version control.
   - The source code is hosted on GitHub.

2. **Continuous Integration (CI)**:

   - GitHub Actions is configured to automate unit testing and Docker container builds upon code pushes to the main branch.

3. **Automated Testing**:

   - Tests are executed using the `sh run_tests.sh` command, which runs the specified test script.

4. **Docker Usage**:

   - Docker Desktop is used for local containerization, allowing for the creation and testing of containers locally.

5. **Continuous Deployment (CD)**:

   - Deployment is managed using Docker Compose with three separate configuration files for development, CI, and
   - production environments.

6. **DigitalOcean Deployment**:

   - The application is deployed on a DigitalOcean Droplet for its ease of use and performance.

7. **SSH Access**:

   - SSH is used for remote server access, file copying, and remote command execution.

8. **Database Export/Import**:

   - Initial PostgreSQL databases are transferred from the local environment to DigitalOcean using `pg_dump` and `psql` commands.

9. **Docker Network**:

   - A Docker network is configured to ensure communication between containers housing the Django application 
   - and PostgreSQL database.

### Automated Database Updates

In addition to the CI/CD pipeline, a cron task has been set up to regularly update the application's database 
with fresh data from OpenFoodFacts. The following command is scheduled to run periodically:


###
You can search alternatives for these categories (e.g.):

* Aides culinaires
* Chocolats
* Epicerie
* Poissons
* Rillettes de poissons
* Sardines à l'huile
* Viandes