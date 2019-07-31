FROM  c4truck/alpine:latest

LABEL maintainer="Pavel Tupikov <ptupikow@mail.ru>"


RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev \
    && apk add postgresql-libs \
    && apk add python3 \ 
    && apk add rsyslog  \
    && apk add openrc --no-cache \
    && apk --no-cache --update-cache add gcc gfortran python python-dev py-pip build-base freetype-dev libpng-dev openblas-dev \
    && apk add supervisor \ 
    && pip3 install --upgrade pip \
    && pip3 install numpy \
    && pip3 install pandas \
    && pip3 install patsy \
    && pip3 install pika \
    && pip3 install psycopg2 \
    && pip3 install psycopg2-binary \
    && pip3 install python-dateutil \
    && pip3 install pytz \
    && pip3 install scipy \
    && pip3 install six \
    && pip3 install statsmodels \
    && pip3 install xlrd \
    && pip3 install XlsxWriter \
    && pip3 install xmltodict \
    && pip3 install sklearn \
    && pip3 install matplotlib \
    && pip3 install requests \
    && pip3 install pybars3
