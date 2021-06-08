FROM python:3.9.5-buster

RUN mkdir app/src/ -p

WORKDIR /app

COPY ./src/requirements.txt ./src/requirements.txt

RUN cd src && pip install -r requirements.txt

COPY ./src ./src

WORKDIR /app/src

# ENTRYPOINT [ "/bin/bash" ]

CMD [ "python3", "data_gen.py" ]
