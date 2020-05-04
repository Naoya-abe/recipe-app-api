FROM python:3.7-alpine
MAINTAINER Naoya Abe

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# rootユーザを使わないように新しいユーザを作成
RUN adduser -D user
USER user
