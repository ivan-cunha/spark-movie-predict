FROM apache/spark:3.5.1-python3

WORKDIR /usr/src
USER root
RUN apt update; \
    apt install -y;                                  

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip && \
    pip install -r requirements.txt
USER spark
CMD ["tail", "-f", "/dev/null"]