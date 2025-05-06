FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y snapd curl xz-utils tar fontconfig fonts-noto-color-emoji

RUN apt-get install fonts-comic-neue fonts-linuxlibertine

# Install typst
RUN curl -L https://github.com/typst/typst/releases/download/v0.13.1/typst-x86_64-unknown-linux-musl.tar.xz \
    | tar -xJ && \
    mv typst-x86_64-unknown-linux-musl/typst /usr/local/bin/ && \
    rm -rf typst-x86_64-unknown-linux-musl

ENTRYPOINT ["typst"]
