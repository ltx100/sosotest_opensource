FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add build-base openldap-dev libffi-dev python3-dev bash git&& \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi

RUN mkdir -p /data0/test/sosotest_files/rootlog/ && mkdir -p /data0/release/sosotest_files/rootlog/
#RUN  git clone http://xxxx:xxx@git.lianjia.com/plat-qa/sosotest_opensource.git

EXPOSE 8080
RUN mkdir /sosotest_opensource
COPY  . /sosotest_opensource/

WORKDIR sosotest_opensource

COPY ./install/sosotest/require.txt ./install/require.txt
COPY ./install/sosotest/config.ini ./config.ini
#COPY ./settings.py ./AutotestWebD/AutotestWebD/settings.py
#COPY ./start.sh ./start.sh
#RUN chmod 755 ./start.sh
RUN pip3 install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -r ./install/require.txt
#RUN bash ./start.sh

ENTRYPOINT python ./AutotestWebD/manage.py runserver 0.0.0.0:8080