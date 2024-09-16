FROM python:3.12-slim-bookworm
LABEL maintainer="Bar Abudi <barabudy@gmail.com>"

WORKDIR /BIU-Python

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD python app.py