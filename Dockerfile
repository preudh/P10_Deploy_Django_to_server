# Use an official Python runtime as a parent image
FROM python:3.9

## Declare build arguments for the variables in .env
#ARG SECRET_KEY
#ARG DEBUG
#ARG DB_NAME
#ARG DB_USER
#ARG DB_PASSWORD
#ARG DB_HOST
#ARG DB_PORT
#
#
## Set these arguments as environment variables
#ENV SECRET_KEY=$SECRET_KEY
#ENV DEBUG=$DEBUG
#ENV DB_NAME=$DB_NAME
#ENV DB_USER=$DB_USER
#ENV DB_PASSWORD=$DB_PASSWORD
#ENV DB_HOST=$DB_HOST
#ENV DB_PORT=$DB_PORT

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1

# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# Set the database connection string as an environment variable
ENV DATABASE_URL=postgres://postgres:postgres@pgdb:5432/postgres

# Set the working directory to /app for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt /app/
# Uninstall the current version of Django (if needed)
RUN pip uninstall django

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

