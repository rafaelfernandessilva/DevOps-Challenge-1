FROM python:alpine3.14

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

CMD [ "python", "hello.py" ]

EXPOSE 8000