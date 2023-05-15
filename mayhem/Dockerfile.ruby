# Build Stage

FROM --platform=linux/amd64 ubuntu:20.04 as builder

#DEBIAN_FRONTEND=noninteractive apt-get install -y cmake clang && \
## Install build dependencies.

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git

#
# How to check for versions from ~/.rbenv/bin/rbenv install -l
#
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash    
RUN  ~/.rbenv/bin/rbenv install 3.2.2

    

    

