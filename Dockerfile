FROM openjdk:16-jdk-alpine

COPY ./jar /cp

ENTRYPOINT ["java", "-cp", "/cp/Sugar.jar:/cp/args4j-2.0.23.jar:/cp/jbzip2-0.9.1.jar:/cp/jcommon-1.0.17.jar:/cp/jfreechart-1.0.14.jar:/cp/json-simple-1.1.1.jar:/cp/sam-1.97.jar", \
            "org.csml.tommo.sugar.SugarApplication"]
CMD ["-h"]

RUN apk add --update --no-cache fontconfig ttf-dejavu
