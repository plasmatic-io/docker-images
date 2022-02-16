FROM debian

ENV VERSION=0.4.3

RUN apt-get update && apt-get -y install wget
WORKDIR /home
RUN wget https://github.com/apollographql/rover/releases/download/v${VERSION}/rover-v${VERSION}-x86_64-unknown-linux-gnu.tar.gz
RUN tar xvzf rover-v${VERSION}-x86_64-unknown-linux-gnu.tar.gz
RUN cp dist/rover /usr/bin/rover
RUN chmod +x /usr/bin/rover

ADD ./schema-uploader.sh /usr/bin/schema-uploader
RUN chmod +x /usr/bin/schema-uploader
