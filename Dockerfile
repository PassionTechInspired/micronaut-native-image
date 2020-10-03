FROM oracle/graalvm-ce:20.2.0-java11

# Install git
yum install -y git && rm -rf /var/cache/yum

# Install native-image
gu install native-image
