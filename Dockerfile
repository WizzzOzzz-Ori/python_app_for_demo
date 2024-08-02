FROM python:3.9-slim

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80

ENV FLASK_APP=app.py

ENTRYPOINT ["python", "app.py"]