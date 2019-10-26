FROM 10.100.2.92:5000/f00lish/centos7_jdk8_base:v1
VOLUME /tmp
WORKDIR /home
ADD ../../yb-private-jar/sapjco3.jar  /opt/soft/jdk1.8.0_191/lib/sapjco3.jar
ADD ../../yb-private-jar/libsapjco3.so  /opt/soft/jdk1.8.0_191/jre/lib/amd64/server/libsapjco3.so
ADD  ./device-service-1.0-SNAPSHOT.jar app.jar

ENV JAVA_HOME /opt/soft/jdk1.8.0_191
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/soft/jdk1.8.0_191/bin
ENV CLASSPATH /opt/soft/jdk1.8.0_191/lib/dt.jar:/opt/soft/jdk1.8.0_191/lib/tools.jar:/opt/soft/jdk1.8.0_191/lib/sapjco3.jar
ENV JRE_HOME /opt/soft/jdk1.8.0_191/jre
ENV LD_LIBRARY_PATH dir::/opt/soft/jdk1.8.0_191/jre/lib/amd64/server

ENTRYPOINT exec java -server -Xms1024m -Xmx1024m -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar app.jar --server.port=9110 --eureka.client.serviceUrl.defaultZone=http://10.100.2.106:9001/eureka/ --spring.application.name=device-service-cd --spring.cloud.config.enabled=true --spring.cloud.config.discovery.enabled=true --spring.http.multipart.maxFileSize=10Mb --spring.http.multipart.maxRequestSize=10Mb  --spring.cloud.config.profile=dev

EXPOSE 9110
