FROM jenkinsci/jnlp-slave

USER root

RUN set -x \
    && echo "deb http://ftp.fr.debian.org/debian testing main" >> /etc/apt/sources.list \
    && apt update \
    && apt install -y \
        python3.6 \
    && apt-get autoclean --yes \
    && find /var/lib/apt/lists/ -mindepth 1 -delete \
    && find /tmp/ -mindepth 1 -delete

USER ${user}
