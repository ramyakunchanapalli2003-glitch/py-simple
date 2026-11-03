FROM python:3.9-slim-buster
WORKDIR /app
COPY square.py /app      
CMD ["python", "square.py"]

