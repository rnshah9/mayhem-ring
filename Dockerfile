FROM --platform=linux/amd64 ubuntu:20.04 as builder
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim less man wget tar git gzip unzip make cmake software-properties-common curl 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y g++ g++-multilib unixodbc unixodbc-dev libmysqlclient-dev libcurl4-gnutls-dev libssl-dev liballegro5-dev liballegro-image5-dev liballegro-ttf5-dev liballegro-audio5-dev liballegro-acodec5-dev liballegro-dialog5-dev liballegro-physfs5-dev qt5-default qtbase5-dev qtmultimedia5-dev libqt5webkit5-dev libqt5serialport5-dev qtconnectivity5-dev qtdeclarative5-dev libqt5opengl5-dev libqt5texttospeech5-dev qtpositioning5-dev qt3d5-dev qt3d5-dev-tools libqt5charts5 libqt5charts5-dev qtwebengine5-dev mesa-common-dev freeglut3-dev libpq-dev libsdl2-dev libsdl2-net-dev libsdl2-mixer-dev libsdl2-image-dev libsdl2-ttf-dev apache2 libpng-dev

ADD . /ring
WORKDIR /ring/language/src
RUN ./buildgcc.sh

