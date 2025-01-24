#!/bin/bash
echo "FROM python" > ./Dockerfile
echo "RUN pip install flask" >> ./Dockerfile
echo "WORKDIR /home/myapp" >> ./Dockerfile
echo "EXPOSE 5050" >> ./Dockerfile
echo 'ENTRYPOINT [ "python" ]' >> ./Dockerfile
echo 'CMD ["sample_app.py" ]' >> ./Dockerfile
docker build -t sampleapp .
docker run -t -d -p 5050:5050 --name samplerunning -v $PWD:/home/myapp sampleapp
docker ps -a
