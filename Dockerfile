FROM mongodb:latest

RUN apt-get update 

COPY . .

RUN pip install -r requirements.txt

