FROM ubuntu:18.04
MAINTAINER wooruang <wooruang@gmail.com>

RUN apt update && apt install -y curl git maven

# Install JDK. (version 11.0.2)
ENV JDK_VER "jdk-11.0.2"
ENV JDK_BASE "openjdk-11.0.2_linux-x64_bin"
ENV JDK_TAR $JDK_BASE".tar.gz"
ENV JDK_MD5 $JDK_TAR".sha256"
ENV JDK_BASE_URL "https://download.java.net/java/GA/jdk11/9/GPL/"
ENV JDK_URL $JDK_BASE_URL$JDK_TAR
ENV JDK_MD5_URL $JDK_BASE_URL$JDK_MD5
ENV PATH="${PATH}:/$JDK_VER/bin"

RUN curl -O "$JDK_URL" && curl -O "$JDK_MD5_URL"

RUN echo "`cat $JDK_MD5` $JDK_TAR" > $JDK_MD5 && sha256sum $JDK_TAR | sha256sum --check $JDK_MD5 &&  tar xzf $JDK_TAR && java -version

# Install Scala. (scala version 2.12.8, sbt version 1.2.8)
ENV SBT_DIR "sbt"
ENV SBT_TAR $SBT_DIR"-1.2.8.tgz"
ENV SBT_BASE_URL "https://sbt-downloads.cdnedge.bluemix.net/releases/v1.2.8/"
ENV SBT_URL $SBT_BASE_URL$SBT_TAR
ENV PATH="${PATH}:/$SBT_DIR/bin"

RUN curl -O $SBT_URL

RUN tar xzf $SBT_TAR && sbt update
