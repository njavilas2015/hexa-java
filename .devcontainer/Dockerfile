FROM eclipse-temurin:21-jdk-alpine

RUN apk add --no-cache unzip wget bash make shadow curl git \
    && wget https://services.gradle.org/distributions/gradle-8.12.1-bin.zip -P /tmp \
    && unzip -d /opt/gradle /tmp/gradle-8.12.1-bin.zip \
    && ln -s /opt/gradle/gradle-8.12.1/bin/gradle /usr/local/bin/gradle \
    && rm -rf /tmp/*

RUN adduser -D -s /bin/bash vscode

USER vscode

WORKDIR /workspaces

RUN curl -s https://api.github.com/repos/njavilas2015/githooks/releases/latest | \
    grep "browser_download_url" | \
    cut -d '"' -f 4 | \
    xargs wget && \
    chmod +x githooks
