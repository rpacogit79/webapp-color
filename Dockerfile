FROM ubuntu
RUN apt update -y && \
    apt install python pip -y
RUN pip install flask && \
    pip install flask-mysql
COPY . /opt/source-code
EXPOSE 8080
ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
