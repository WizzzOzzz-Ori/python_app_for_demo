FROM python:3.10-alpine

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 80

ENV FLASK_APP=app.py

ENTRYPOINT ["python", "app.py"]