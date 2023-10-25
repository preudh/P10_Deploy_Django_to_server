# Use an official Python runtime as a parent image
FROM python:3.9

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

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make sure Gunicorn is in your requirements.txt or install it directly
RUN pip install gunicorn

# Copy the current directory contents into the container at /app
COPY . /app/

# Set the command to run your application using Gunicorn
# Assuming your Django project is named "myproject" and resides in the root directory. Adjust if different.
CMD ["gunicorn", "P8_Django_Purbeurre.wsgi:application", "--bind", "0.0.0.0:8000"]



