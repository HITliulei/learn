FROM python:latest

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

RUN mkdir -p /app
WORKDIR /app

ADD ./* /app/

CMD [ "python", "-m", "http.server" ]

EXPOSE 8000
