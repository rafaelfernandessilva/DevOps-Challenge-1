FROM python:3.7

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

RUN export $(cat .env | xargs)

CMD [ "python", "hello.py" ]

EXPOSE 8000