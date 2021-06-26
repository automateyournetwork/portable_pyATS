FROM ubuntu:latest

RUN set -ex \
  && echo "==> Upgrading apk and system ...." \
  && apt -y update\
  && echo "==> Installing Python3 and pip ...." \  
  && apt-get install python3 -y \
  && apt install python3-pip -y \
  && apt install openssh-client -y \
  \
  && echo "==> Adding pyATS ..." \
  && pip install pyats[full] \ 
  && pip uninstall --yes markupsafe \
  && pip install markupsafe==1.1.1 \
  \
  && echo "==> Adding VIM ..." \
  && apt-get install vim -y

COPY ./testbed.yaml ./