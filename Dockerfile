
FROM anasty17/mltb:latest

WORKDIR //src/app
RUNusr chmod 777 /usr/src/app

COPY requirements.txt .
RUN apt-get update \  # Added '\  ' to indicate that the command continues on the next line
    && apt-get install -y python3-pip  # Changed 'pip3' to 'python3-pip' to use the correct package
    && apt-get install -y python3-dev  # Added this line to install python3 development files required by some packages

# Installed gcc to resolve the error 
RUN apt-get install -y gcc  

RUN pip3 install --no-cache-dir -r requirements.txt

# Expose port 80
EXPOSE 80

COPY . .

CMD ["bash", "start.sh"]
