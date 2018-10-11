FROM ubuntu:18.04

# Download and install Qt dependencies

RUN apt-get update && \
    apt-get -y install -y \
    build-essential libgl1-mesa-dev libassimp-dev libfontconfig1 libdbus-1-3 curl

# Choose Qt version

ENV QT_VERSION_MAJOR 5.11
ENV QT_VERSION 5.11.2

# Compile and install Qt Base

ENV QT_DIST /usr/local/Qt-"$QT_VERSION"
ENV QT_INSTALLER_URL https://download.qt.io/official_releases/qt/"$QT_VERSION_MAJOR"/"$QT_VERSION"/qt-opensource-linux-x64-"$QT_VERSION".run
ENV QT_INSTALLER_NAME /qtbase-opensource-src-"$QT_VERSION"

COPY ./qt-installer-noninteractive.qs /usr/share/
COPY ./extract-qt-installer /usr/share

#RUN echo Qt version: $QT_VERSION \
#    && curl -sSL $QT_INSTALLER_URL \
#    && /usr/share/extract-qt-installer $QT_INSTALLER_NAME ~/Qt

RUN echo Qt version: $QT_VERSION

RUN mkdir /usr/share/downloads && curl $QT_INSTALLER_URL --output /usr/share/downloads/qt-installer.run

RUN /usr/share/downloads/qt-installer.run --script ./qt-installer-noninteractive.qs --platform minimal --verbose


ENV PATH $QT_DIST/bin:$PATH

EXPOSE 2033
