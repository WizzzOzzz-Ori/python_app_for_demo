FROM python:3.9-slim

COPY . /app
WORKDIR /app
ENV PIP_NO_BINARY=:all: PIP_DISABLE_PIP_VERSION_CHECK=1
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --no-use-pep517 --no-build-isolation -r requirements.txt
EXPOSE 80

ENV FLASK_APP=app.py

ENTRYPOINT ["python", "app.py"]