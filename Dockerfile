FROM node:10.9

RUN apt-get update \
  && apt-get install -y zip \
  && apt-get clean \
  && curl -O https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py \
  && rm get-pip.py \
  && pip install awscli \
  && pip install --upgrade awsebcli
