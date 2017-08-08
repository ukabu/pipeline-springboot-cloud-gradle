FROM openjdk:8

MAINTAINER Emmanuel Pirsch <emmanuel@pirsch.org>

RUN apt-get -y update
RUN apt-get -y install \
    git \
    zip \
    curl \
    wget \
    unzip \
    httpie \
    jq

RUN wget -O demo.zip 'http://start.spring.io/starter.zip?type=gradle-project&language=java&bootVersion=1.5.4.RELEASE&baseDir=demo&groupId=com.example&artifactId=demo&name=demo&description=Demo+project+for+Spring+Boot&packageName=com.example.demo&packaging=jar&javaVersion=1.8&autocomplete=config&style=devtools&style=web&style=cloud-oauth2&style=cloud-config-client&style=scs-config-client&style=scs-service-registry&style=actuator&generate-project=' && unzip demo.zip && cd demo && ./gradlew clean build || echo "Failed, really!" && cd .. && rm demo.zip && rm -rf demo

RUN wget -O demo.zip 'http://start.spring.io/starter.zip?type=gradle-project&language=java&bootVersion=1.5.6.RELEASE&baseDir=demo&groupId=com.example&artifactId=demo&name=demo&description=Demo+project+for+Spring+Boot&packageName=com.example.demo&packaging=jar&javaVersion=1.8&autocomplete=config&style=devtools&style=web&style=cloud-oauth2&style=cloud-config-client&style=scs-config-client&style=scs-service-registry&style=actuator&generate-project=' && unzip demo.zip && cd demo && ./gradlew clean build || echo "Failed, really!" && cd .. && rm demo.zip && rm -rf demo
