FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install gunicorn
RUN pip install --no-cache-dir -r requirements.txt
ENV PORT=80
ENV FLASK_ENV=production
CMD ["sh", "-c", "gunicorn --bind :$PORT --workers 2 --threads 4 main:app"]

