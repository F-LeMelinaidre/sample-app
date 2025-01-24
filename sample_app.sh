#!/bin/bash
echo "FROM python" > ./Dockerfile
echo "RUN pip install flask" >> ./Dockerfile
echo "WORKDIR /home/myapp/" >> ./Dockerfile
echo "COPY ./static ./static/" >> ./Dockerfile
echo "COPY ./templates ./templates/" >> ./Dockerfile
echo "COPY ./sample_app.py ." >> ./Dockerfile
echo "EXPOSE 8080" >> ./Dockerfile
echo "CMD python3 ./sample_app.py" >> ./Dockerfile
docker build -t sampleapp .
docker run -t -d -p 8080:8080 --name samplerunning sampleapp
docker ps -a
