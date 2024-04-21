# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all contents
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the application
ENV FLASK_APP=app.py

CMD ["flask", "run", "--host", "0.0.0.0"]
