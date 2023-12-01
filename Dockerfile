FROM registry.cn-beijing.aliyuncs.com/rdc-builds/base:1.0

RUN apt-get update && apt-get install -y python3 python3-pip

RUN curl -fsSL https://deb.nodesource.com/setup_16.x 
RUN apt-get install -y nodejs
RUN curl -fsSL https://deb.nodesource.com/test | bash -
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
