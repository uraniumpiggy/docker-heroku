FROM maven:3.6.0-jdk-11-slim
COPY . /home/app/src
WORKDIR /home/app/src
RUN mvn clean package
RUN mvn clean compile assembly:single
