FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

ENV DATABASE_URL=postgresql://user:password@db:5432/book_catalog

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
