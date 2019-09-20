FROM openjdk:jre-slim

ENV KARATE_VERSION 0.9.4

MAINTAINER Marta Arcones "marta.arcones@gmail.com"

ADD features features
ADD fixtures fixtures
ADD https://dl.bintray.com/ptrthomas/karate/karate-${KARATE_VERSION}.jar karate.jar

VOLUME target

CMD [ "java", "-jar", "karate.jar", "features/" ]
