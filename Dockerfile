FROM python:3.9.5-buster

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
# RUN apk add --update --no-cache postgresql-client

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static


