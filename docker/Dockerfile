FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="LuckyCoinORO Developers <dev@luckycoinoro.org>"
LABEL description="Dockerised LuckyCoinORO, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /luckycoinoro

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} luckycoinoro
RUN useradd -u ${USER_ID} -g luckycoinoro -s /bin/bash -m -d /luckycoinoro luckycoinoro
RUN mkdir /luckycoinoro/.luckycoinoro
RUN chown luckycoinoro:luckycoinoro -R /luckycoinoro

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER luckycoinoro

VOLUME ["/luckycoinoro"]

EXPOSE 49243 9999 59243 59244

WORKDIR /luckycoinoro
