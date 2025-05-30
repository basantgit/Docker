FROM ubuntu:latest
WORKDIR /app
COPY . /app
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["python3", "app.py"]