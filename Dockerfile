FROM alpine:latest

RUN wget --no-check-certificate https://raw.githubusercontent.com/qiumzh/v2ray-heroku/master/configure.sh && \
	chmod +x ./configure.sh && \
	./configure.sh
