
FROM mongodb:latest

RUN apt-get update 

COPY . .

RUN pip install -r requirements.txt


RUN python migrations.py

CMD ["flask", "run", "--host=0.0.0.0"]
