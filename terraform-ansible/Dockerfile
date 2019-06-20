FROM debian:stretch
MAINTAINER kSandr-ki
ENV TERRAFORM_VERSION=0.12.2
RUN apt-get update \
    && apt-get install -y wget zip git openssh-client python-cryptography python-openssl procps python-boto sudo make ansible python-pip \
    && pip install boto3 botocore \
    && mkdir /terraform \
    && cd /terraform \
    && wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin/ \
    && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip 
