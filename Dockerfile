FROM oracle/graalvm-ce:20.2.0-java11

# Install git
RUN yum install -y git && rm -rf /var/cache/yum

# Install native-image
RUN gu install native-image
