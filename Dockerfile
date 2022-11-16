FROM ubuntu:focal

COPY LICENSE .
COPY README.md .

# Update package list  
RUN apt-get update -y

# Install require package
RUN apt-get install python3.8 python3-pip python3.8-venv git wget unzip -y

# Install package for inslightface
RUN apt-get install wget unzip gcc g++

# Create a folder to mount
RUN mkdir ncku