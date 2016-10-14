FROM python:3.5.2
MAINTAINER kradalby@kradalby.no

ENV APP_DIR=/srv/app

RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

COPY requirements.txt $APP_DIR/requirements.txt

RUN pip install -r $APP_DIR/requirements.txt


COPY . $APP_DIR

EXPOSE 69/udp


CMD ["python", "mehtftp.py"]
