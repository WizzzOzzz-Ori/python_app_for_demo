FROM python:3.9

COPY . /app
WORKDIR /app
# RUN pip install --upgrade pip --use-feature=no-binary-enable-wheel-cache
RUN pip install --no-cache-dir --no-use-pep517 --no-build-isolation -r requirements.txt
EXPOSE 80

ENV FLASK_APP=app.py

ENTRYPOINT ["python", "app.py"]