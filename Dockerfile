# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster
COPY . /app

# Set the working directory to /app
WORKDIR /app



# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt


# Make port 80 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python3", "hello.py"]

