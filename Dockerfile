FROM node:8.10.0

RUN apt-get update
RUN apt-get install -y zip
RUN apt-get install -y python-dev
RUN cat /etc/debian_version
RUN apt-get clean
RUN node --version
RUN python --version
RUN  curl -O https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py \
  && rm get-pip.py
RUN pip --version
RUN pip install awscli \
  && pip install --upgrade awsebcli
RUN aws --version
RUN eb --version


