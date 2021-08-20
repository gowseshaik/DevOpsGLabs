FROM ubuntu

LABEL org.opencontainers.image.authors="gowseshaik@gmail.com"

RUN apt update 

RUN apt install monit -y

RUN monit

EXPOSE 2812/tcp 

CMD ["monit", "status"]
