FROM openjdk:8-jre-alpine3.9
# FROM openjdk:8

RUN apk --no-cache add openssl wget git curl

RUN wget https://github.com/synthetichealth/synthea/releases/download/v2.6.1/synthea-with-dependencies-jdk8.jar

RUN git clone https://github.com/intrahealth/madx-hiv.git

ARG POP=100

RUN java -jar synthea-with-dependencies-jdk8.jar \
    -p ${POP} \
    # --exporter.fhir.bulk_data true \
    -m hiv* \
    -d madx-hiv/synthea \
    # seed to create the same patients every time
    -s 123


ARG FHIR=http://host.docker.internal:8080/fhir
ENV FHIR=$FHIR

# application/fhir+ndjson doesn't work
# hapi error is: Incorrect Content-Type header value of "application/fhir+ndjson;charset=utf-8" was provided in the request. A FHIR Content-Type is required for "TRANSACTION" operation
CMD for FILE in ./output/fhir/*; do curl -X POST -H "Content-Type: application/fhir+json" -d @$FILE ${FHIR} ; done



