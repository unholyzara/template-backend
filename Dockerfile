FROM python:3.10-slim

COPY <service_name> /app/<service_name>
COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD python <service_name>/manage.py runserver 0.0.0.0:8000