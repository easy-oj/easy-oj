#!/usr/bin/env bash

wget https://ci.moekr.com/job/easy-oj/lastSuccessfulBuild/artifact/eoj-linux-amd64.tar.gz && \
    tar xzvf eoj-linux-amd64.tar.gz && \
    rm eoj-linux-amd64.tar.gz

mv eoj-linux-amd64/bin/core.jar /opt/eoj/bin/core.jar
mv eoj-linux-amd64/bin/repos /opt/eoj/bin/repos
mv eoj-linux-amd64/bin/oss /opt/eoj/bin/oss
mv eoj-linux-amd64/bin/queue /opt/eoj/bin/queue
mv eoj-linux-amd64/bin/judger /opt/eoj/bin/judger
mv eoj-linux-amd64/bin/executor /opt/eoj/bin/executor

rm -rf eoj-linux-amd64

# systemctl restart eoj-core.service
# systemctl restart eoj-repos.service
# systemctl restart eoj-oss.service
# systemctl restart eoj-queue.service
# systemctl restart eoj-judger.service
