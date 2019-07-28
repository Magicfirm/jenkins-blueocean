# ------------------------------------------------------------------------------
# This image used in magicfirm jenkins system running enviroment with docker-compose
# ------------------------------------------------------------------------------
# Pull base image.
FROM jenkinsci/blueocean

MAINTAINER JIN TAO <jeffkyjin@magicfirm.com>

# Install relates.
RUN apt-get update && \
    apt-get -y install locales htop tzdata

USER root

RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# setting timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
