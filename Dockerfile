FROM python:3.7

COPY Pipfile* /
RUN pip install pipenv
RUN pipenv lock -r > /requirements.txt
RUN pip install -r /requirements.txt
RUN pip install rasa==1.10.14

COPY . /app
WORKDIR /app
RUN chmod +x start_services.sh
CMD ./start_services.sh
