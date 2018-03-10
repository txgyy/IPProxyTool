FROM docker.io/python:3.6
ENV PATH /usr/local/bin:$PATH
ENV PATH /home:$PATH
COPY . /home
WORKDIR /home
RUN apt-get update && apt-get install -y lsof \
    && pip install -i https://mirrors.aliyun.com/pypi/simple -r requirements.txt \
    && apt-get autoclean
CMD python ipproxytool.py