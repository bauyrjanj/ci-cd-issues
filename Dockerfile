FROM rasa/rasa:2.6.0-full
MAINTAINER Ben Jenis
COPY ./*.yml /app/
COPY ./data /app/data/
COPY ./tests /app/tests/
COPY ./actions /app/actions/
COPY  ./requirements.txt /app/requirements.txt
EXPOSE 8000
WORKDIR /app
USER root
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
USER 1001
ENTRYPOINT [""] 
#CMD python -m rasa_sdk --actions actions -vv

