FROM java:8u111-jdk

ENV GIT_URL ""
ENV GIT_CHECKOUT "master"
ENV NPM_COMMAND "npm install"

ADD startup.sh /usr/bin/startup.sh

CMD ["/usr/bin/startup.sh"]
