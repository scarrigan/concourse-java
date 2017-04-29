FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD ../target/greeter-0.0.1-SNAPSHOT.jar greeter.jar
RUN sh -c 'touch /greeter.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /greeter.jar" ]