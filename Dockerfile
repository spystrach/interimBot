# ne fonctionne pas avec bullseye sur raspberry pi
# FROM python:3.10-slim
FROM python:3.10-slim-buster

RUN ln -sf /bin/bash /bin/sh
RUN useradd -ms /bin/bash interimbot
USER interimbot

WORKDIR /home/interimbot/Documents

COPY requirements.txt ./
COPY .env ./
COPY interimBot.py ./

RUN pip install --no-cache-dir --disable-pip-version-check -r requirements.txt

CMD [ "python", "./interimBot.py" ]
