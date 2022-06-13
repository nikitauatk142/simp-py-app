FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
RUN python get-pip.py
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
