FROM postgres
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=medico



FROM python:3
ENV PYTHONUNBUFFERED 1
EXPOSE 5000
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip3 install -r requirements.txt
COPY ./test/ /code/
CMD python3 run.py
