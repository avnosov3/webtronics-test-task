FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install poetry
RUN poetry install --no-root

CMD [ "poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
