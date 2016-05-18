FROM ubuntu

MAINTAINER Ramit Surana <ramitsurana@gmail.com>

#Installing Python,Golang,ruby,and git
RUN apt-get update -qqy
RUN apt-get install -y ca-certificates curl wget ca-certificates

#Installing Heroku Toolbelt
RUN echo >/etc/apt/sources.list.d/heroku.list \
deb http://toolbelt.heroku.com/ubuntu ./
RUN curl -sL https://toolbelt.heroku.com/apt/release.key | apt-key add -
RUN apt-get update && apt-get install -y heroku-toolbelt

#Setting Workdir
WORKDIR ["/usr/local/heroku"]
