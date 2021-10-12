# set base image (host OS)
FROM python:3.10
MAINTAINER GaijinKa

COPY start-playground.sh .

# command to run on container start
ENTRYPOINT [ "bash", "start-playground.sh" ]
