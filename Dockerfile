# https://github.com/francescou/docker-compose-ui
# DOCKER-VERSION 1.12.3
FROM python:2.7-alpine

ENV http_proxy http://169.254.166.1:3128
ENV https_proxy http://169.254.166.1:3128

COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY . /app
EXPOSE 5000

ENTRYPOINT ["python", "/app/main.py"]

WORKDIR /opt/pentestskripte/poc/
