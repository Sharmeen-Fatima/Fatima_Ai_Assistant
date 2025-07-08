# Dockerfile

FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir chainlit

EXPOSE 8000

CMD ["chainlit", "run", "main.py", "-h", "0.0.0.0", "--port", "8000"]
