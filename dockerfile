FROM buildpack-deps:jessie

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian jessie main" | tee /etc/apt/sources.list.d/mono-official.list
RUN apt-get update

RUN apt-get install -y \
    vim \
    git \
    mono-devel \
    mono-xsp4

WORKDIR /home/app

ADD docker-compose.yml /home/app/docker-compose.yml
ADD hello.aspx /home/app/hello.aspx

