FROM oracle/graalvm-ce:20.3.0-java11

# Install git
RUN yum install -y git && rm -rf /var/cache/yum

# Install native-image
RUN gu install native-image

WORKDIR /app/

COPY . .

RUN ./gradlew dependencies assemble build --quiet

RUN ./gradlew clean && rm -rf /app/
