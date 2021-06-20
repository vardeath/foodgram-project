FROM python:3.9-slim
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD gunicorn foodgram.wsgi -b 0.0.0.0:8000