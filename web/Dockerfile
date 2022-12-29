FROM python:3.9.7-slim

COPY . /app

WORKDIR /app 

RUN python3 -m venv  /opt/venv


RUN  /opt/venv/bin/pip install pip --upgrade


RUN /opt/venv/bin/pip install -r  requirments.txt

RUN chmod +x entrypoint.sh && chmod +x migrate.sh

RUN sh /app/migrate.sh

CMD ["/app/entrypoint.sh"]