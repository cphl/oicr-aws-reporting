FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  git \
  python-pip

RUN git clone https://github.com/cphl/oicr-sandbox.git
RUN pip install boto
WORKDIR oicr-sandbox/aws/cost_reporting/
RUN mkdir reports
