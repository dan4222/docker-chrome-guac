FROM dhoppeit/docker-ubuntu-systemd:20.04
EXPOSE 8443
EXPOSE 8080

RUN apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y ; apt-get install software-properties-common -y 


WORKDIR /
VOLUME ["/sys/fs/cgroup" , "/sys/fs/cgroup"]
ADD install.sh /
RUN ["chmod", "+x", "/install.sh"]
CMD /bin/bash /install.sh
