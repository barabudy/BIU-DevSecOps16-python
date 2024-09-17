FROM python:3.12.6-slim-bookworm
LABEL maintainer="Bar Abudi <barabudy@gmail.com>"

WORKDIR /BIU-DevSecOps-Python

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY static/ static/
COPY templates/ templates/

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]