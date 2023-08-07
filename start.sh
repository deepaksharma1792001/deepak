
FROM anasty17/mltb:latest

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Provide read, write, and execute permissions to the working directory
RUN chmod 777 /usr/src/app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the Python dependencies from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose port 80
EXPOSE 80

# Copy all files from the current directory to the working directory
COPY . .

# Use the start.sh script as the command to run when the container starts
CMD ["bash", "start.sh"]
