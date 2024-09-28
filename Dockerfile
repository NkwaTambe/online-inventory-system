FROM python:3.13.0rc2-slim

ENV FLASK_ENV=production

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD flask run --host=0.0.0.0