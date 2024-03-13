FROM eclipse-temurin:17-jdk

EXPOSE 80:80

ENV APPDIR=/opt/app

WORKDIR ${APPDIR}

COPY ./build/libs/*.jar ${APPDIR}

RUN mv *.jar app.jar

CMD ["java", "-jar", "app.jar"]