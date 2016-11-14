FROM oviis/jenkins-dind-slave:v2
MAINTAINER Ovi Isai <ovidiu.isai@gmail.com>

USER root

RUN echo "===> Installing sudo to emulate normal OS behavior and other needed bins..."
RUN apk --update add sudo git curl              
RUN echo "===> Adding NodeJS..." 
RUN apk --update add nodejs
RUN rm -rf /var/cache/apk/*      

USER jenkins
