FROM python:3.12-slim

WORKDIR /mechbot
COPY . .

RUN apt-get update && apt-get install -y git awscli \\
    && pip install -r requirements.txt \\
    && chmod +x core/*.sh

CMD ["python", "core/main.py"]
