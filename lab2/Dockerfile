FROM ubuntu:latest
FROM python:latest

ENV testfile test.sh

RUN apt-get update -y 
RUN apt-get install bash neofetch -y
ADD . .
RUN bash $testfile
RUN python3 test.py
