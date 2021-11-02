FROM python:3.8

WORKDIR /app
RUN apt-get install curl

COPY ./app/requirements.txt /app
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
COPY ./app/ /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
EXPOSE 8080