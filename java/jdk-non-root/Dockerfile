FROM adoptopenjdk:11-jdk-hotspot

RUN groupadd --system --gid 1000 test
RUN useradd --system --gid test --uid 1000 --shell /bin/bash --create-home test

USER test
WORKDIR /home/test
