#FROM python:3-8-slim-buster
#WORKDIR /app
#COPY ./

#RUN apt update -y && apt install awscli -y

#RUN pip install -r requirements.txt
#CMD ['python3', 'app.py']
FROM python:3.8-alpine
WORKDIR /app
COPY . .
RUN apt install -r requirements.txt
CMD python3 app.py
