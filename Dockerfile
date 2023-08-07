
FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose port 80
EXPOSE 80

COPY . .

CMD ["bash", "start.sh"]
