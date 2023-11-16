FROM ubuntu:jammy

SHELL ["/bin/bash", "-c"]

# Prep for installs

RUN apt update

# JDK 18

RUN apt-get install openjdk-18-jre -y

# Git

RUN apt install git -y

# Node.js

RUN apt-get install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN NODE_MAJOR=21 && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update
RUN apt-get install nodejs -y

# PNPM

RUN npm install --global pnpm

# YARN

RUN corepack enable
RUN yarn set version stable

# Google Chrome

RUN apt install wget -y
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb -y

# Cleanup

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*
