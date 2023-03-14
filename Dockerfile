# Base image
FROM python:3.10-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# # Install required packages
# RUN apt-get update \
#     && apt-get install -y build-essential \
#                           python3-dev \
#                           libpq-dev \
#                           libssl-dev \
#                           libffi-dev \
#                           curl \
#                           netcat \
#     && rm -rf /var/lib/apt/lists/*

# Install application dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV FLASK_APP=main.py
ENV FLASK_ENV=production

# Expose port 5000
EXPOSE 3003

# Run the command to start the application
CMD ["flask", "run", "--host=0.0.0.0"]
