FROM python:3.9-slim

COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --no-use-pep517 --no-build-isolation -r requirements.txt
EXPOSE 80

ENV FLASK_APP=app.py

ENTRYPOINT ["python", "app.py"]