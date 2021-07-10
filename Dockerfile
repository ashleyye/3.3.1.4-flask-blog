FROM python:3.8-slim-buster

RUN mkdir /myportfolio
COPY requirements.txt /myportfolio
WORKDIR /myportfolio
RUN pip3 install -r requirements.txt

COPY . /myportfolio
RUN echo "current directory"
RUN ls
RUN chmod u+x ./entrypoint.sh
RUN ls -lah ./entrypoint.shla
ENTRYPOINT ["sh", "./entrypoint.sh"]
