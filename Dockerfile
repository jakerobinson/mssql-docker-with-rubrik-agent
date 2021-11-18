FROM mcr.microsoft.com/mssql/server:2019-latest

USER root
RUN apt-get update
RUN apt-get -y install uuid-runtime
RUN wget -P /tmp/ https://shrd1-rbk01.rubrikdemo.com/connector/rubrik-agent.x86_64.deb --no-check-certificate
RUN apt-get -y install /tmp/rubrik-agent.x86_64.deb
RUN rm -f /tmp/rubrik-agent.x86_64.deb

EXPOSE 12800
EXPOSE 12801