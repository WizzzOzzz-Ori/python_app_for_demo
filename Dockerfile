FROM python:3.9-slim

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80

# Define environment variable
ENV FLASK_APP=app.py

# Run app.py when the container launches
ENTRYPOINT ["python", "app.py"]