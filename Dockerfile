# This is an official lightweight Python image as the base
FROM python:3.9-slim

# Setting the working directory in the container
WORKDIR /app

# This Copies jusr the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# This Copies the rest of the application code into the container
COPY . .

# Exposing the port the app runs on
EXPOSE 8000

# Setting the entry point for the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]