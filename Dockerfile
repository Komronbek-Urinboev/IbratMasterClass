FROM python:3.12-slim

ENV PYTHONUNBUFFERED 1

RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src/
COPY bot.log /src/
RUN pip install -r requirements.txt
RUN pip install docker
COPY . /src/

CMD [ "python", "./main.py" ]