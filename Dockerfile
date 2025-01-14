FROM ghcr.io/amachsoftware/jenkins-agent-amazonlinux2

ARG user=jenkins

USER root

RUN yum install -y python3-pip
RUN yum clean all

USER ${user}

ENTRYPOINT ["jenkins-agent"]
