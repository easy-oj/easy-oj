#!/usr/bin/env bash

wget https://ci.moekr.com/job/easy-oj/lastSuccessfulBuild/artifact/eoj-linux-amd64.tar.gz && \
    tar xzf eoj-linux-amd64.tar.gz && \
    rm eoj-linux-amd64.tar.gz
mv eoj-linux-amd64 /opt/eoj && \
    mkdir /opt/eoj/logs && \
    ln -s /opt/eoj/etc /etc/eoj && \
    ln -s /opt/eoj/logs /var/log/eoj

# systemctl enable /opt/eoj/systemd/eoj-core.service
# systemctl enable /opt/eoj/systemd/eoj-repos.service
# systemctl enable /opt/eoj/systemd/eoj-oss.service
# systemctl enable /opt/eoj/systemd/eoj-queue.service
# systemctl enable /opt/eoj/systemd/eoj-judger.service
