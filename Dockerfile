FROM ubuntu:latest
EXPOSE 8443
EXPOSE 8080

RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y ; apt-get install software-properties-common -y

WORKDIR /    

ADD install.sh /
CMD ["/install.sh"]