FROM python:3.11

COPY requirements.txt .
COPY requirements.dev.txt .
COPY migrations ./migrations

RUN python3 -m ensurepip && pip install -r ./requirements.txt && pip install -r ./requirements.dev.txt

CMD alembic upgrade head