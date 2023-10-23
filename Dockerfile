FROM openjdk:latest

#RUN apk add --no-cache openjdk8

RUN mkdir -p /opt/vintelligent/vins

COPY ./build/libs/eureka.jar /opt/vintelligent/vins

# set default dir so that next commands executes in /home/app dir
WORKDIR /opt/vintelligent/vins

# will execute npm install in /home/app because of WORKDIR

# no need for /home/app/server.js because of WORKDIR
EXPOSE 8761
ENTRYPOINT ["java", "-jar","eureka.jar"]
#ENTRYPOINT [ "bin" ]
#docker exec -ti 50b0a6201a14 /bin/bash