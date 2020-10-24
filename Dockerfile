FROM python:3.6
MAINTAINER Sivakumar Vunnam "sivakumarvunnam1@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]
