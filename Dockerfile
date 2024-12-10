FROM python:3.10-alpine

COPY . /app
WORKDIR /app
# RUN pip install --upgrade pip --use-feature=no-binary-enable-wheel-cache
RUN pip install -r requirements.txt
EXPOSE 80

ENV FLASK_APP=app.py

ENTRYPOINT ["python", "app.py"]