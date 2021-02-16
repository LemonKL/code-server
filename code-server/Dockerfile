#基础镜像
FROM linuxserver/code-server:version-v3.8.1

#作者信息
MAINTAINER zhangkailiang (zklqiji@163.com)

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && apt-get update
RUN apt-get install vim -y

RUN mkdir -p /opt/java/ /opt/gradle/ /opt/maven/ /config/.local/share/code-server/extensions/

# OpenJDK
ADD jdk/OpenJDK*.tar.gz /opt/java/
ENV JAVA_HOME=/opt/java/jdk8u282-b08
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH=$PATH:$JAVA_HOME/bin

# Gradle
ADD gradle/gradle*.tar.gz /opt/gradle/
ENV GRADLE_HOME=/opt/gradle/gradle-4.7
ENV GRADLE_USER_HOME=~/.gradle
ENV PATH=$PATH:$GRADLE_HOME/bin

# Maven
ADD maven/apache-maven*.tar.gz /opt/maven/
ENV MAVEN_HOME=/opt/maven/apache-maven-3.6.3
ENV M2_HOME=$MAVEN_HOME
ENV PATH=$PATH:$MAVEN_HOME/bin
COPY maven/settings.xml $MAVEN_HOME/conf/settings.xml

# vscode config
COPY config/settings.json /config/data/User/settings.json
# 运行及安装插件
COPY config/run           /etc/services.d/code-server/run
COPY config/plugin-run.sh /config/extensions/plugin-run.sh
# 中文
#COPY config/argv.json     /config/data/User/argv.json
#COPY config/languagepacks.json /config/data/languagepacks.json

# vsix
COPY vsix/*.vsix /config/vsix/

RUN echo "alias ll='ls -alF'" >> /etc/profile ; \
    echo "alias la='ls -A'" >> /etc/profile

ENV LANG=zh_CN.UTF-8
ENV LANGUAGE=zh_CN.UTF-8
