FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y automake autoconf autopoint \
    build-essential cmake gcc git intltool libtool \
   libtool-bin m4 make meson nasm ninja-build \
   patch pkg-config tar zlib1g-dev clang \
   bison bzip2 curl flex g++ gzip pax


# Set to the uid of the caller, or build artefacts will be owned by root.
ARG USER_ID=501
ARG USERNAME=developer

# Create the user that maps to the desired host UID.
RUN useradd --uid $USER_ID $USERNAME && \
    mkdir /home/$USERNAME && \
    chown $USERNAME /home/$USERNAME && \
    chgrp $USERNAME /home/$USERNAME

COPY mingw-w64-build /home/${USERNAME}
RUN mkdir -p /home/${USERNAME}/toolchains && /home/${USERNAME}/mingw-w64-build x86_64 /home/${USERNAME}/toolchains/

ENV PATH=$PATH:/home/${USERNAME}/toolchains/mingw-w64-x86_64/bin
