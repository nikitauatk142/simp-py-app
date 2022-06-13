FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip curl
RUN apt-get install -y libapache2-mod-wsgi python-dev build-essential git wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python2 get-pip.py
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
