FROM python:3.12-slim-bookworm
LABEL maintainer="Bar Abudi <barabudy@gmail.com>"

WORKDIR /BIU-Python

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]